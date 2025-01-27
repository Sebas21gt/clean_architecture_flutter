import 'package:app_test/providers/pokemon_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonProvider =
        Provider.of<PokemonAbilityProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: pokemonProvider.fetchAbilities(),
        builder: (context, snapshot) {
          if (pokemonProvider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: pokemonProvider.abilities.length,
            itemBuilder: (context, index) {
              final ability = pokemonProvider.abilities[index];
              final abilityName = ability['ability']['name'] as String;
              final isHidden = ability['is_hidden'] as bool;
              final slot = ability['slot'];

              return ListTile(
                title: Text(
                  abilityName,
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle:
                    Text('Slot: $slot | Hidden: ${isHidden ? "Yes" : "No"}'),
              );
            },
          );
        },
      ),
    );
  }
}
