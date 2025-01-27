import 'package:app_test/data/services.dart';

class AbilityRepositoryImpl{

  AbilityRepositoryImpl(this._services);
  final Services _services;

  Future<List<dynamic>> getPokemonAbilities() async {
    final data = await _services.getPokemon('pikachu');
    return data;
  }
}
