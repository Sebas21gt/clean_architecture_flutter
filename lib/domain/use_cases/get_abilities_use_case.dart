import 'package:app_test/domain/models/pokemon_ability.dart';
import 'package:app_test/domain/repository/pokemon_repository_impl.dart';

class GetAbilitiesUseCase {
  GetAbilitiesUseCase(this._abilityRepository);
  final AbilityRepositoryImpl _abilityRepository;

  Future<List<PokemonAbility>> call(String pokemonName) async {
    final abilities = await _abilityRepository.getPokemonAbilities(pokemonName);
    return abilities;
  }
}
