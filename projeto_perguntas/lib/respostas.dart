import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String texto;
  final void Function() quandoSelecionado;

    const Resposta(this.texto, this.quandoSelecionado, {super.key});
    
      @override
      Widget build(BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 5),
          width: double.infinity,

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, 
              foregroundColor: Colors.white,
            ),
            onPressed: quandoSelecionado, child: Text(texto)
          ),
        );
      }
}