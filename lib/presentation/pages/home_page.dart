import 'package:app_test/presentation/widgets/organisms/pokemos_search_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: PokemonSearch()),
    );
  }
}
