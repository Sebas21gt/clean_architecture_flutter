import 'package:app_test/data/services.dart';
import 'package:app_test/domain/models/pokemon_ability.dart';

class AbilityRepositoryImpl {
  AbilityRepositoryImpl(this._services);
  final Services _services;

  Future<List<PokemonAbility>> getPokemonAbilities(String pokemonName) async {
    final abilitiesJson = await _services.getPokemon(pokemonName);
    return abilitiesJson
        .map(
          (abilityJson) =>
              PokemonAbility.fromJson(abilityJson as Map<String, dynamic>),
        )
        .toList();
  }
}
