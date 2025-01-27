import 'package:app_test/presentation/providers/pokemon_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokemonAbilityScreen extends StatelessWidget {
  const PokemonAbilityScreen({required this.pokemonName, super.key});
  final String pokemonName;

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<PokemonAbilityProvider>(context, listen: false);

    // Sirve para que la petición se ejecute después de que se pinte el widget
    Future.microtask(() {
      provider.fetchAbilities(pokemonName);
    });

    return Scaffold(
      body: Consumer<PokemonAbilityProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (provider.abilities.isNotEmpty) {
            return ListView.builder(
              itemCount: provider.abilities.length,
              itemBuilder: (context, index) {
                final ability = provider.abilities[index];
                return ListTile(
                  title: Text(ability.ability.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('URL: ${ability.ability.url}'),
                      Text('Hidden: ${ability.isHidden ? "Yes" : "No"}'),
                      Text('Slot: ${ability.slot}'),
                    ],
                  ),
                );
              },
            );
          }
          return const Center(
            child: Text('No se encontraron habilidades'),
          );
        },
      ),
    );
  }
}
