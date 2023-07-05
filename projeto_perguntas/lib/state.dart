import 'package:flutter/material.dart';

main() => runApp(MeuApp());

class MeuApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MeuAppState();
  }
}

class MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas') ),
        ),
      body: Center(
        child: GestureDetector(
          child: Text('Clique'),
        ),
        ),
      ),
    );
  }
}