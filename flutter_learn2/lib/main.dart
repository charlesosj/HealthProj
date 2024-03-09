import 'package:flutter/material.dart';
import 'next_page/nextpage.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: _MyAppExtState());
  }
}



class _MyAppExtState extends StatefulWidget {
  const _MyAppExtState({super.key});

  @override
  State<_MyAppExtState> createState() => __MyAppExtStateState();
}

class __MyAppExtStateState extends State<_MyAppExtState> {
  String buttonName = 'Click';
  int currentIndex = 0;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 255, 255, 1),
        title: const Text("hello"),
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const NextPage(),
                          ),
                        );
                      },
                      child: const Text("next page"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonName = 'Button 2';
                        });
                      },
                      child: Text(buttonName),
                    )
                  ],
                ),
              )
            : GestureDetector(
                child: isClicked == true ? Image.asset('images/myimage.jpg') : Image.network("https://fluttermaster.com/wp-content/uploads/2019/01/fluttermaster.com-load-image-from-assets-in-flutter.jpg"),
                onTap: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(
              Icons.settings,
              //color: Colors.amber,
            ),
          )
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
