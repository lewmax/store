import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/auth/value_objects.dart';
import '../../../../injection.dart';
import '../../../core/app_router.gr.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final List<ImageUrl> imageUrls;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().push(ImageGalleryScreenRoute(imageUrls: imageUrls));
      },
      child: Stack(
        children: [
          SizedBox(
            height: 45.h,
            child: Swiper(
              pagination:
                  const SwiperPagination(),
              loop: false,
              itemBuilder: (context, index) {
                return Image(
                  image: NetworkImage(imageUrls[index].getOrCrash()),
                );
              },
              itemCount: imageUrls.length,
            ),
          ),
          Positioned(
            left: 15,
            top: 20,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 20,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: IconButton(
                icon: const Icon(Icons.share, color: Colors.black),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
