import 'package:flutter/material.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final List<String> subCategories;
  final String imageUrlPart;

  const CategoryWidget({
    super.key,
    required this.categoryName,
    required this.subCategories,
    required this.imageUrlPart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            categoryName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
            ),
            children: List.generate(
              subCategories.length,
              (index) => GestureDetector(
                onTap: () {
                  getIt<AppRouter>().push(SubCategoryScreenRoute(
                    mainCatName: categoryName,
                    subCatName: subCategories[index],
                  ));
                },
                child: GridTile(
                  footer: Center(child: Text(subCategories[index])),
                  child: Image.asset(
                    'assets/images/$imageUrlPart$index.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
