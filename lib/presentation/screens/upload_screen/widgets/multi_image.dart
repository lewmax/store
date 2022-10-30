import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../../application/product/product_form/product_form_bloc.dart';

class MultiImage extends StatelessWidget {
  const MultiImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.w,
          width: 50.w,
          color: Colors.blueGrey.shade100,
          child: Center(
            child: context.watch<ProductFormBloc>().state.imagesList.value.fold(
                  (f) => Text(
                    'you have not \n \n picked any images yet !',
                    style: TextStyle(fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                  (imagesList) => ListView.builder(
                    itemCount: imagesList.length,
                    itemBuilder: (context, index) => Image.file(
                      width: 50.w,
                      height: 50.w,
                      imagesList[index]
                          .getOrCrash()!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
