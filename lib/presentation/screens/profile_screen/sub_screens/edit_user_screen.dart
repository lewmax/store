import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:multi_store/application/auth/user/user_actor/user_actor_bloc.dart';

import '../../../../domain/auth/user.dart';
import '../../../../injection.dart';
import '../../../core/input_decoration.dart';

class EditUserScreen extends HookWidget {
  const EditUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();

    Widget userFields(User user) {
      nameController.text = user.fullName.getOrCrash();
      phoneController.text = user.phone;
      addressController.text = user.address;
      return Form(
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
    }

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
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeMap(
            authenticatedCustomer: (state) {
              return userFields(state.user);
            },
            authenticatedSupplier: (state) {
              return userFields(state.user);
            },
            orElse: () => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.check, color: Colors.black),
        onPressed: () {
          getIt<UserActorBloc>().add(UserActorEvent.editNameAddressPhone(
            name: nameController.text,
            phone: phoneController.text,
            address: addressController.text,
          ));
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
