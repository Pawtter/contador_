import 'dart:ui';
import 'package:flutter/material.dart';
import 'logic.dart';
import 'dart:convert';

Operacoes operacao = new Operacoes();

String contador = '0';

class PaginaPrinc {
  MaterialApp principal() {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contador Básico'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                contador,
                style: const TextStyle(fontSize: 100, color: Colors.blueAccent),
              ),
              ElevatedButton(
                onPressed: () => {operacao.Adicao(int.parse(contador))},
                child: const Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: const Text('Subtrair'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
