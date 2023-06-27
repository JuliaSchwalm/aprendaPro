import 'package:flutter/material.dart';

class Iniciante extends StatelessWidget {
  const Iniciante({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: barraSuperior(),
      body: corpo(),
      floatingActionButton: botao(),
    );
  }
}

barraSuperior() {
  return AppBar(
    title: const Text("Aprenda Pro"),
    backgroundColor: Colors.deepPurple,
    centerTitle: true,
  );
}

corpo() {
  return Container(
    alignment: Alignment.center,
    //margin: const EdgeInsets.all(55),
    margin: const EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 80),
    padding: const EdgeInsets.all(50),
    
    decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
    child: const Column(
      children: [
        Text(
          "If e else\n",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                " O uso de 'if' e 'else' está relacionado às estruturas condicionais na programação. Essas estruturas permitem que você tome decisões com base em  condições específicas. O 'if' e 'else' são duas palavras-chave comumente usadas para implementar essa lógica condicional. A estrutura básica é a seguinte:``` if (condição) { // bloco de código a ser executado se a condição for verdadeira } else { // bloco de código a ser executado se a condição for falsa } ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

botao() {
  return ElevatedButton(
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.deepPurple,
      
    ),
    onPressed: () {},
    child: const Text('Continuar'),
  );
}

