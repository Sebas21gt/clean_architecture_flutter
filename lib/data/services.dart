// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:app_test/core/global_config.dart';
import 'package:http/http.dart' as http;

class Services {
  final baseUrl = GlobalConfig().baseurl;

  Future<List<dynamic>> getPokemon(String pokemonName) async {
    final url = Uri.parse('$baseUrl/pokemon/$pokemonName');

    final response = await http.get(url);

    final jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return jsonResponse['abilities'] as List<dynamic>;
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
