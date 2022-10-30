import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:multi_store/application/order/order_form_bloc/order_form_bloc.dart';

import '../../../core/input_decoration.dart';

class UserInfoScreen extends HookWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();

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
          'Edit User Info',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: BlocBuilder<OrderFormBloc, OrderFormState>(
        builder: (context, state) {
          nameController.text = state.order.name.getOrCrash();
          phoneController.text =
              state.order.phone.value.fold((l) => '', (r) => r);
          addressController.text =
              state.order.address.value.fold((l) => '', (r) => r);
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: TextFieldDecoration.editUserFieldDecoration
                        .copyWith(labelText: 'Full name'),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: phoneController,
                    decoration: TextFieldDecoration.editUserFieldDecoration
                        .copyWith(labelText: 'Phone'),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: addressController,
                    decoration: TextFieldDecoration.editUserFieldDecoration
                        .copyWith(labelText: 'Address'),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.check, color: Colors.black),
        onPressed: () {
          context
              .read<OrderFormBloc>()
              .add(OrderFormEvent.nameChanged(nameController.text));
          context
              .read<OrderFormBloc>()
              .add(OrderFormEvent.phoneChanged(phoneController.text));
          context
              .read<OrderFormBloc>()
              .add(OrderFormEvent.addressChanged(addressController.text));
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
