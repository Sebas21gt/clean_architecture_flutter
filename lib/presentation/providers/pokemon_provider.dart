// ignore_for_file: avoid_catches_without_on_clauses

import 'package:app_test/domain/models/pokemon_ability.dart';
import 'package:app_test/domain/use_cases/get_abilities_use_case.dart';
import 'package:flutter/material.dart';

class PokemonAbilityProvider extends ChangeNotifier {
  PokemonAbilityProvider(this._getAbilitiesUseCase);
  final GetAbilitiesUseCase _getAbilitiesUseCase;

  List<PokemonAbility> _abilities = [];
  bool isLoading = true;

  List<PokemonAbility> get abilities => _abilities;

  Future<void> fetchAbilities(String pokemonName) async {
    try {
      isLoading = true;
      notifyListeners();

      _abilities = await _getAbilitiesUseCase.call(pokemonName);
    } catch (e) {
      print('Error al obtener habilidades: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
