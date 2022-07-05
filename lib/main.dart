import 'package:flutter/material.dart';
import 'front.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String z = '';
  @override
  Widget build(BuildContext context) {
    PaginaPrinc PaginaPrincipal = new PaginaPrinc();
    return PaginaPrincipal.principal();
  }
}
