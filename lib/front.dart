//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'logic.dart';
import 'dart:convert';

Operacoes operacao = new Operacoes();

int contador = 0;

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
              StatefulBuilder(
                builder: (BuildContext context, setState) {
                  return Text(
                    contador.toString(),
                    style: const TextStyle(
                        fontSize: 100, color: Colors.blueAccent),
                  );
                },
              ),
              StatefulBuilder(
                builder: (BuildContext context, setState) {
                  return ElevatedButton(
                    onPressed: () => {
                      setState(
                        () {
                          contador = operacao.Adicao(contador) as int;
                        },
                      )
                    },
                    child: const Text('Adicionar'),
                  );
                },
              ),
              StatefulBuilder(
                builder: (BuildContext context, setState) {
                  return ElevatedButton(
                    onPressed: () => {
                      setState(
                        () {
                          contador--;
                        },
                      )
                    },
                    child: const Text('Subtrair'),
                  );
                },
              ),

              //ElevatedButton(
              //  onPressed: () => {},
              //  child: const Text('Subtrair'),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
