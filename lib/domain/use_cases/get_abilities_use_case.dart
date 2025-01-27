import 'package:app_test/domain/models/pokemon.dart';
import 'package:app_test/domain/repository/pokemon_repository_impl.dart';

class GetAbilitiesUseCase {
  final AbilityRepositoryImpl _abilityRepository;

  GetAbilitiesUseCase(this._abilityRepository);

  Future<List<dynamic>> call() async {
    final data = await _abilityRepository.getPokemonAbilities();
    return data;
  }
}
