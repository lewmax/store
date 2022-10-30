import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:multi_store/domain/order/order_failure.dart';
import 'package:multi_store/domain/order/value_objects.dart';
import 'package:multi_store/domain/product/i_product_repository.dart';

import '../../../domain/order/i_order_repository.dart';
import '../../../domain/order/i_payment_facade.dart';
import '../../../domain/order/order.dart';
import 'package:injectable/injectable.dart';

part 'order_form_event.dart';

part 'order_form_state.dart';

part 'order_form_bloc.freezed.dart';

@Injectable()
class OrderFormBloc extends Bloc<OrderFormEvent, OrderFormState> {
  final IOrderRepository orderRepository;
  final IProductRepository productRepository;
  final IPaymentFacade paymentFacade;

  OrderFormBloc(
      {required this.orderRepository,
      required this.productRepository,
      required this.paymentFacade})
      : super(OrderFormState.initial()) {
    on<OrderFormEvent>((event, emit) async {
      await event.map(
        initialised: (e) {
          emit(state.copyWith(order: e.order));
        },
        nameChanged: (e) {
          emit(
            state.copyWith(
              order: state.order.copyWith(name: FullName(e.nameStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        emailChanged: (e) {
          emit(
            state.copyWith(
              order: state.order.copyWith(email: EmailAddress(e.emailStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        phoneChanged: (e) {
          emit(
            state.copyWith(
              order: state.order.copyWith(phone: Phone(e.phoneStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        addressChanged: (e) {
          emit(
            state.copyWith(
              order: state.order.copyWith(address: Address(e.addressStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        paymentStatusChanged: (e) {
          emit(
            state.copyWith(
              order: state.order
                  .copyWith(paymentStatus: PaymentStatus(e.status.name)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        deliveryStatusChanged: (e) {
          emit(
            state.copyWith(
              order: state.order
                  .copyWith(deliveryStatus: DeliveryStatus(e.status.name)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        saved: (e) async {
          Either<OrderFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(isSaving: true, saveFailureOrSuccess: null));

          final orderFailure = state.order.failure;
          if (orderFailure == null) {
            if (state.order.paymentStatus.getOrCrash() !=
                PaymentStatuses.CashOnDelivery) {
              failureOrSuccess = await paymentFacade.pay(state.order.totalSum);

              if (failureOrSuccess.isRight()) {
                emit(state.copyWith(
                  order: state.order.copyWith(
                    deliveryStatus: DeliveryStatus(
                      DeliverStatuses.Confirming.name,
                    ),
                    paymentStatus:
                        PaymentStatus(PaymentStatuses.PaidOnline.name),
                  ),
                ));
              }
            }

            failureOrSuccess = await orderRepository.create(state.order);
          }

          if (failureOrSuccess == right(unit)) {
            state.order.orderItems.getOrCrash().forEach((orderItem) async {
              final leftNumber = orderItem.available.getOrCrash() -
                  orderItem.quantity.getOrCrash();
              await productRepository.subtractQuantity(
                  orderItem.prodId.getOrCrash(), leftNumber);
            });
          }

          emit(state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccess: failureOrSuccess,
          ));
        },
      );
    });
  }
}
