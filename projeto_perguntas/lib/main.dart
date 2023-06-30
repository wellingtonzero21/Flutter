import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual é seu animal favorito?',
    ];
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        ),
      body: Column(
        children: [
          Text(perguntas[0]),
            ElevatedButton(onPressed: null, child: Text('Resposta 01')),
            ElevatedButton(onPressed: null, child: Text('Resposta 02')),
            ElevatedButton(onPressed: null, child: Text('Resposta 03')),
        ],
      ),
     ), 
    );
  }
}
