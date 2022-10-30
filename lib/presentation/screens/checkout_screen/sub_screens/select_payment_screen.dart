import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_store/application/order/order_form_bloc/order_form_bloc.dart';
import 'package:multi_store/domain/order/value_objects.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'package:multi_store/.env';

class SelectPaymentScreen extends HookWidget {
  const SelectPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context
        .read<OrderFormBloc>()
        .state
        .order
        .deliveryStatus
        .value
        .fold((l) => 1, (s) => s == DeliverStatuses.Confirming ? 1 : 2);

    final selectedItem = useState(index);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Select Payment',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                value: 1,
                groupValue: selectedItem.value,
                onChanged: (int? value) => selectedItem.value = value!,
                title: const Text('Cash On Delivery'),
                subtitle: const Text('Pay Cash At Home'),
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedItem.value,
                onChanged: (int? value) => selectedItem.value = value!,
                title: const Text('Pay via Visa / Master Card'),
                subtitle: Row(
                  children: const [
                    Icon(Icons.payment, color: Colors.blue),
                    SizedBox(width: 15),
                    Icon(FontAwesomeIcons.ccMastercard, color: Colors.blue),
                    SizedBox(width: 15),
                    Icon(FontAwesomeIcons.ccVisa, color: Colors.blue),
                  ],
                ),
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedItem.value,
                onChanged: (int? value) => selectedItem.value = value!,
                title: const Text('Pay via Paypal'),
                subtitle: Row(children: const [
                  Icon(FontAwesomeIcons.paypal, color: Colors.blue),
                  SizedBox(width: 15),
                  Icon(FontAwesomeIcons.ccPaypal, color: Colors.blue),
                ]),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(bottom: 10),
        color: Colors.grey.shade200,
        child: Container(
          height: 45,
          width: 90.w,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(25),
          ),
          child: MaterialButton(
            onPressed: () {
              if (selectedItem.value == 1) {
                context
                    .read<OrderFormBloc>()
                    .add(const OrderFormEvent.paymentStatusChanged(
                      PaymentStatuses.CashOnDelivery,
                    ));
                context
                    .read<OrderFormBloc>()
                    .add(const OrderFormEvent.deliveryStatusChanged(
                      DeliverStatuses.Confirming,
                    ));
              } else {
                context
                    .read<OrderFormBloc>()
                    .add(const OrderFormEvent.paymentStatusChanged(
                      PaymentStatuses.Unpaid,
                    ));
                context
                    .read<OrderFormBloc>()
                    .add(const OrderFormEvent.deliveryStatusChanged(
                      DeliverStatuses.Unpaid,
                    ));
              }
              Navigator.of(context).pop();
            },
            child: const Text('Confirm Payment'),
          ),
        ),
      ),
    );
  }
}
