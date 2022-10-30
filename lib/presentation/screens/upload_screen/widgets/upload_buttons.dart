import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_form/product_form_bloc.dart';
import 'package:image_picker/image_picker.dart';

class UploadButtons extends StatelessWidget {
  const UploadButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        context.watch<ProductFormBloc>().state.imagesList.failureOrUnit.fold(
            (f) => buildImagesButton(context),
            (_) => buildClearButton(context)),
        context.watch<ProductFormBloc>().state.isSaving
            ? const CircularProgressIndicator()
            : buildUploadButton(context),
      ],
    );
  }

  Widget buildUploadButton(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btn1",
      onPressed: () {
        context.read<ProductFormBloc>().add(const ProductFormEvent.saved());
      },
      backgroundColor: Colors.yellow,
      child: const Icon(
        Icons.upload,
        color: Colors.black,
      ),
    );
  }

  Widget buildImagesButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FloatingActionButton(
        heroTag: "btn2",
        onPressed: () async {
          final xFilesList = await ImagePicker().pickMultiImage(
            maxHeight: 500,
            maxWidth: 500,
            imageQuality: 85,
          );
          final imagesList = <File>[];
          for (var xFile in xFilesList) {
            imagesList.add(File(xFile.path));
          }
          context.read<ProductFormBloc>().add(
                ProductFormEvent.imagesListChanged(imagesList),
              );
        },
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.photo_library,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildClearButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FloatingActionButton(
        heroTag: "btn3",
        onPressed: () {
          context
              .read<ProductFormBloc>()
              .add(const ProductFormEvent.imagesCleared());
        },
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.delete_forever,
          color: Colors.black,
        ),
      ),
    );
  }
}
