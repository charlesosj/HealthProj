import 'package:flutter/material.dart';
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 255, 255, 1),
        title: const Text("hello"),
      ),
    );
  }
}