import 'package:flutter/material.dart';
import './questao.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
 
  var _perguntaSelecionada = 0;
  
    void _resposta(){
      setState(() {
      _perguntaSelecionada++;
      });
      print('Respondida!');
      print(_perguntaSelecionada);
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
          Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(onPressed: _resposta, child: Text('Resposta 01')),
            ElevatedButton(onPressed: _resposta, child: Text('Resposta 02')),
            ElevatedButton(onPressed: _resposta, child: Text('Resposta 03')),
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

