import 'package:flutter/material.dart';
import 'package:health_app/health_connect/example.dart';
import 'main_scaffold.dart' ;
void main() {
  void main() => runApp(HealthApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScaffold()
    );
  }
}
