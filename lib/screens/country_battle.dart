import 'package:flutter/material.dart';

class CountryBattleModePage extends StatefulWidget {
  const CountryBattleModePage({super.key});

  @override
  State<CountryBattleModePage> createState() => _CountryBattleModePageState();
}

class _CountryBattleModePageState extends State<CountryBattleModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('country battle mode'),
      ),
    );
  }
}
