import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:multi_store/.env';
import 'package:multi_store/domain/order/i_payment_facade.dart';
import 'package:multi_store/domain/order/order_failure.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPaymentFacade)
class StripePaymentFacade implements IPaymentFacade {
  @override
  Future<Either<OrderFailure, Unit>> pay(double price) async {
    try {
      final finalPrice = (price * 100).toStringAsFixed(0);
      final body = <String, dynamic>{
        'amount': finalPrice,
        'currency': 'USD',
        'payment_method_types[]': 'card',
      };
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        body: body,
        headers: {
          'Authorization': 'Bearer $stripeSecretKey',
          'content_type': ''
        },
      );
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      print(json);

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: json['client_secret'],
          applePay: const PaymentSheetApplePay(merchantCountryCode: 'us'),
          googlePay: const PaymentSheetGooglePay(
            testEnv: true,
            merchantCountryCode: 'us',
          ),
          merchantDisplayName: 'Maksym',
        ),
      );

      await Stripe.instance.presentPaymentSheet();
      return right(unit);
    } catch (e) {
      return left(OrderFailure.paymentFailed(e.toString()));
    }
  }
}
