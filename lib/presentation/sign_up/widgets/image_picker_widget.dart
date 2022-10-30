import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import '../../../application/auth/sign_up_form/sign_up_form_bloc.dart';

class ImagePickerWidget extends HookWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.purpleAccent,
          backgroundImage: context
              .watch<SignUpFormBloc>()
              .state
              .logoImage
              .value
              .fold(
                (f) => f.maybeMap(
                  invalidImage: (_) => null,
                  orElse: () => null,
                ),
                (_) => FileImage(
                  context.watch<SignUpFormBloc>().state.logoImage.getOrCrash()!,
                ),
              ),
        ),
        const SizedBox(width: 40),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.camera_alt),
                color: Colors.white,
                onPressed: () async {
                  final xFile =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  if (xFile != null) {
                    final pickedImage = File(xFile.path);
                    context
                        .read<SignUpFormBloc>()
                        .add(SignUpFormEvent.logoImageChanged(pickedImage));
                  }
                },
              ),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.photo),
                color: Colors.white,
                onPressed: () async {
                  final xFile = await ImagePicker().pickImage(
                    source: ImageSource.gallery,
                    maxHeight: 500,
                    maxWidth: 500,
                    imageQuality: 85,
                  );
                  if (xFile != null) {
                    final pickedImage = File(xFile.path);
                    context
                        .read<SignUpFormBloc>()
                        .add(SignUpFormEvent.logoImageChanged(pickedImage));
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
