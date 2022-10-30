import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/product/values.dart';
import '../home_screen/widgets/search_widget.dart';
import 'widgets/category_widget.dart';

class CategoryScreen extends HookWidget {
  final _pageController = PageController();

  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final activeItem = useState(0);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const SearchWidget(),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: buildSideNavigation(activeItem),
          ),
          Expanded(
            flex: 10,
            child: buildPageView(context, activeItem),
          ),
          Expanded(
            child: buildScrollBar(activeItem),
          ),
        ],
      ),
    );
  }

  Widget buildSideNavigation(ValueNotifier<int> activeItem) {
    return Container(
      height: double.infinity,
      color: Colors.grey.shade300,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeItem.value = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.bounceInOut,
              );
            },
            child: Container(
              color: activeItem.value == index
                  ? Colors.white
                  : Colors.grey.shade300,
              height: 100,
              child: Center(
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPageView(BuildContext context, ValueNotifier<int> activeItem) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) => activeItem.value = value,
        scrollDirection: Axis.vertical,
        children: [
          CategoryWidget(
            categoryName: categories[0],
            subCategories: subCategories['men']!,
            imageUrlPart: 'men/men',
          ),
          CategoryWidget(
            categoryName: categories[1],
            subCategories: subCategories['women']!,
            imageUrlPart: 'women/women',
          ),
          CategoryWidget(
            categoryName: categories[2],
            subCategories: subCategories['electronics']!,
            imageUrlPart: 'electronics/electronics',
          ),
          CategoryWidget(
            categoryName: categories[3],
            imageUrlPart: 'accessories/accessories',
            subCategories: subCategories['accessories']!,
          ),
          CategoryWidget(
            categoryName: categories[4],
            subCategories: subCategories['shoes']!,
            imageUrlPart: 'shoes/shoes',
          ),
          CategoryWidget(
            categoryName: categories[5],
            subCategories: subCategories['home & garden']!,
            imageUrlPart: 'homegarden/home',
          ),
          CategoryWidget(
            categoryName: categories[6],
            subCategories: subCategories['beauty']!,
            imageUrlPart: 'beauty/beauty',
          ),
          CategoryWidget(
            categoryName: categories[7],
            subCategories: subCategories['kids']!,
            imageUrlPart: 'kids/kids',
          ),
          CategoryWidget(
            categoryName: categories[8],
            subCategories: subCategories['bags']!,
            imageUrlPart: 'bags/bags',
          ),
        ],
      ),
    );
  }

  Widget buildScrollBar(ValueNotifier<int> activeItem) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.brown.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                if (activeItem.value < categories.length - 1) {
                  activeItem.value++;
                  _pageController.animateToPage(
                    activeItem.value,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.bounceInOut,
                  );
                }
              },
              child: const Text(
                '<<',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 10,
                ),
              ),
            ),
            Text(
              categories[activeItem.value].toUpperCase(),
              style: const TextStyle(
                color: Colors.brown,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 10,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (activeItem.value > 0) {
                  activeItem.value--;
                  _pageController.animateToPage(
                    activeItem.value,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.bounceInOut,
                  );
                }
              },
              child: const Text(
                '>>',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
