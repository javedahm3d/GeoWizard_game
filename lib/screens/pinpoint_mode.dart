import 'package:flutter/material.dart';

class PinPointModePage extends StatefulWidget {
  const PinPointModePage({super.key});

  @override
  State<PinPointModePage> createState() => _PinPointModePageState();
}

class _PinPointModePageState extends State<PinPointModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('pin point mode'),
      ),
    );
  }
}
