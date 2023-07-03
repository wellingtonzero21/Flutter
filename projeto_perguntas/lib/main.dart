import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatelessWidget {

  var perguntaSelecionada = 0;
  void resposta(){
    perguntaSelecionada++;
    print('Respondida!');
    print(perguntaSelecionada);
  }

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
          Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: resposta, child: Text('Resposta 01')),
            ElevatedButton(onPressed: resposta, child: Text('Resposta 02')),
            ElevatedButton(onPressed: resposta, child: Text('Resposta 03')),
        ],
      ),
     ), 
    );
  }
}
