import 'package:app_test/presentation/widgets/atoms/category_button.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = <Map<String, dynamic>>[
      {'title': 'Pokedex', 'color': const Color.fromARGB(255, 98, 226, 194)},
      {'title': 'Moves', 'color': const Color.fromARGB(255, 242, 111, 88)},
      {'title': 'Abilities', 'color': const Color(0xFF7BB7FA)},
      {'title': 'Items', 'color': const Color(0xFFFFD66B)},
      {'title': 'Locations', 'color': const Color(0xFF9F5BBA)},
      {'title': 'Type Charts', 'color': const Color(0xFF8B7355)},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 2,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryButton(
          title: categories[index]['title'] as String,
          color: categories[index]['color'] as Color,
          onTap: () {},
        );
      },
    );
  }
}
