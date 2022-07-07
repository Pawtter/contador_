//import 'dart:html';
import 'dart:ui';
import 'package:contador_/front.dart';
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
          body: Center(
            child: contadorCentral(),
          )
          //            StatefulBuilder(
          //              builder: (BuildContext context, setState) {
          //                return contadorCentral();
          //              },
          //            ),
          //            StatefulBuilder(
          //              builder: (BuildContext context, setState) {
          //                return ElevatedButton(
          //                  onPressed: () => {
          //                    setState(
          //                      () {
          //                        contador = operacao.Adicao(contador);
          //                      },
          //                    )
          //                  },
          //                  child: const Text('Adicionar'),
          //                );
          //              },
          //            ),
          //            StatefulBuilder(
          //              builder: (BuildContext context, setState) {
          //                return ElevatedButton(
          //                  onPressed: () => {
          //                    setState(
          //                      () {
          //                        contador--;
          //                      },
          //                    )
          //                  },
          //                  child: const Text('Subtrair'),
          //                );
          //              },
          //            ),

          //ElevatedButton(
          //  onPressed: () => {},
          //  child: const Text('Subtrair'),
          //)

          ),
    );
  }
}

//----

class contadorCentral extends StatefulWidget {
  contadorCentral({Key? key}) : super(key: key);

  @override
  State<contadorCentral> createState() => _contadorCentralState();
}

class _contadorCentralState extends State<contadorCentral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            contador.toString(),
            style: const TextStyle(fontSize: 100, color: Colors.blueAccent),
          ),
          ElevatedButton(
            onPressed: () => {
              setState(
                () {
                  contador = operacao.Adicao(contador);
                },
              )
            },
            child: const Text('Adicionar'),
          ),
          ElevatedButton(
            onPressed: () => {
              setState(
                () {
                  contador--;
                },
              )
            },
            child: const Text('Subtrair'),
          ),
        ],
      ),
    );
  }
}
