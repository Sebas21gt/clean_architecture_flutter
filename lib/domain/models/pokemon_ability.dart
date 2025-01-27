import 'dart:convert';

PokemonAbility pokemonAbilityFromJson(String str) =>
    PokemonAbility.fromJson(json.decode(str) as Map<String, dynamic>);

String pokemonAbilityToJson(PokemonAbility data) => json.encode(data.toJson());

class PokemonAbility {

  PokemonAbility({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory PokemonAbility.fromJson(Map<String, dynamic> json) => PokemonAbility(
        ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
        isHidden: json['is_hidden'] as bool,
        slot: json['slot'] as int,
      );
  Ability ability;
  bool isHidden;
  int slot;

  Map<String, dynamic> toJson() => {
        'ability': ability.toJson(),
        'is_hidden': isHidden,
        'slot': slot,
      };
}

class Ability {

  Ability({
    required this.name,
    required this.url,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        name: json['name'] as String,
        url: json['url'] as String,
      );

  String name;
  String url;

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
