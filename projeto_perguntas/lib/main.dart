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
    final List<Map<String, Object>> perguntas = [
      {
        'texto'  : 'Qual a sua cor favorita?',
        'respostas' : ['Preto','Vermelho','Verde','Branco'],
      },
      {
        'texto'  : 'Qual é seu animal favorito?',
        'respostas' : ['Coelho','Cachorro','Gato','Leão'],
      }
 ];

    List<Widget> respostas = [];

    for(String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']){
      respostas.add(Resposta(textoResp, _resposta));
    };

    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Perguntas')),
        ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          ...respostas,
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

