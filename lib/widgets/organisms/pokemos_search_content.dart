import 'package:app_test/widgets/atoms/custom_text.dart';
import 'package:app_test/widgets/atoms/search_input.dart';
import 'package:app_test/widgets/molecules/category_grid.dart';
import 'package:flutter/material.dart';

class PokemonSearchTemplate extends StatelessWidget {
  const PokemonSearchTemplate({super.key, this.abiliteName = ''});

  final String abiliteName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'What Pokemon\nare you looking for $abiliteName?',
            size: 28,
            weight: FontWeight.bold,
          ),
          const SizedBox(height: 16),
          const SearchInput(
            hintText: 'Search Pokemon, Move, Ability etc',
          ),
          const SizedBox(height: 24),
          const CategoryGrid(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                text: 'Pokémon News',
                size: 20,
                weight: FontWeight.bold,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
