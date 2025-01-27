// ignore_for_file: public_member_api_docs

import 'package:app_test/data/services.dart';
import 'package:app_test/domain/repository/pokemon_repository_impl.dart';
import 'package:app_test/domain/use_cases/get_abilities_use_case.dart';
import 'package:app_test/presentation/pages/home_page.dart';
import 'package:app_test/presentation/pages/pokemon_details_page.dart';
import 'package:app_test/presentation/providers/counter_provider.dart';
import 'package:app_test/presentation/providers/pokemon_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final pokemonAbilityUseCase = GetAbilitiesUseCase(
    AbilityRepositoryImpl(Services()),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(
          create: (_) => PokemonAbilityProvider(pokemonAbilityUseCase),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 48),
        ),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      home: const PokemonDetailScreen(
        pokemonName: 'pikachu',
      ),
    );
  }
}
