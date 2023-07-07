import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
 
  var _perguntaSelecionada = 0;
  
    void _resposta(){
      setState(() {
      _perguntaSelecionada++;
      });
    }

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual é seu animal favorito?',
 ];
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Perguntas')),
        ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta 1", _resposta),
            Resposta("Resposta 2", _resposta),
            Resposta("Resposta 3", _resposta),
            ],
          ),
        ), 
      );
    }
  }
class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}

