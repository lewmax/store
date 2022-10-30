import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/auth/value_objects.dart';

class ImageGalleryScreen extends HookWidget {
  final List<ImageUrl> imageUrls;

  ImageGalleryScreen({Key? key, required this.imageUrls}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final imageCounter = useState(0);
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${imageCounter.value + 1}/${imageUrls.length}',
                style: const TextStyle(fontSize: 24, letterSpacing: 8),
              ),
              SizedBox(
                height: 50.h,
                child: PageView(
                  onPageChanged: (index) => imageCounter.value = index,
                  controller: _controller,
                  children: imageUrls
                      .map(
                        (imageUrl) => InteractiveViewer(
                          transformationController: TransformationController(),
                          child: Image.network(imageUrl.getOrCrash()),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.yellow),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            imageUrls[index].getOrCrash(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
