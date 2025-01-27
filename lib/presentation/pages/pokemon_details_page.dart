import 'package:app_test/presentation/widgets/organisms/pokemon_ability.dart';
import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {

  const PokemonDetailScreen({required this.pokemonName, super.key});
  final String pokemonName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Información de $pokemonName',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: PokemonAbilityScreen(pokemonName: pokemonName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
