import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  var perguntaSelecionada = 1;

  void responder(){
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            ),            
          ],
        ),
      ),
    );
  }
}