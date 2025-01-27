import 'package:app_test/domain/use_cases/get_abilities_use_case.dart';
import 'package:flutter/material.dart';

class PokemonAbilityProvider extends ChangeNotifier {
  PokemonAbilityProvider(this._getAbilitiesUseCase);
  final GetAbilitiesUseCase _getAbilitiesUseCase;

  List<dynamic> _abilities = [];
  bool isLoading = true;

  List<dynamic> get abilities => _abilities;

  Future<List<dynamic>> fetchAbilities() async {
    try {
      _abilities = await _getAbilitiesUseCase.call();
    } //
    catch (e) {
      print('error $e');
    } // 
    finally {
      print(_abilities);
      isLoading = false;
      notifyListeners();
    }
    return _abilities;
  }
}
