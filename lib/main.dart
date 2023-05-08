import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> namaAngka = ['ONE', 'TWO', 'THREE', 'FOUR', 'FIVE', 'SIX', 'SEVEN', 'EIGHT', 'NINE', 'TEN', 'ELEVEN', 'TWELVE'];
    double hue = 45;
    return Scaffold(
      appBar: AppBar(
        title: Text("MUHAMMAD MUFID AQIL"),
        backgroundColor: Color.fromARGB(255, 9, 107, 245),
        centerTitle: false,
      ),
      body: GridView.count(crossAxisCount: 3, children: [
        for(int i = 0; i < 12; i++)
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(5.0),
            color: HSLColor.fromAHSL(1.0, hue += 15, 1.0, 0.82).toColor(),
            child: Text(
              namaAngka[i],
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}