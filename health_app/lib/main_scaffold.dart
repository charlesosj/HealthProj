import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health App"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        child: Column(children: [
          ElevatedButton(onPressed: (){}, child: Text("Connect"))

        ],),

      ),
      
    );
  }
}
