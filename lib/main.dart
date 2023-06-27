import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_projeto/iniciante.dart';

void main() {
  runApp(const MaterialApp(
    title: "Aprenda Pro",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: barraSuperior(),
      body: corpo(context),
      // floatingActionButton: botaoFlutuante(),
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

corpo(BuildContext context) {
  return Center(
    child: Column(
      
      children: [
        teste(),
        principal(context),
      ],
    ),
  );
}

teste() {
  return Container(
    margin: EdgeInsets.only(top: 120, bottom: 90),
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
     decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(40)),
    height: 130,
    width: 400,
    child: const Text(
      'Escolha seu nível',
      style: TextStyle(fontSize: 32, color: Colors.white),
    ),
  );
}

Widget principal(BuildContext context) {
  return SizedBox(
    width: 300,
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        botaoNivel1(context),
        botaoNivel2(),
        botaoNivel3(),
      ],
    ),
  );
}

botaoNivel1(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Iniciante()),
      );
    },
    style: TextButton.styleFrom(
      backgroundColor: Colors.deepPurple,
    ),
    child: const SizedBox(
      width: 200,
     
      child: Text(
        'Iniciante',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}

botaoNivel2() {
  return ElevatedButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: Colors.deepPurple,
    ),
    child: const SizedBox(
      width: 200,
      child: Text(
        'Intermediario',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}

botaoNivel3() {
  return ElevatedButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: Colors.deepPurple,
    ),
    child: const SizedBox(
      width: 200,
      child: Text(
        'Avançado',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
