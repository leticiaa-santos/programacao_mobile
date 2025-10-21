import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  String? value;

  void iniState() { //resetar o estado da página quando carregada novamente
    super.initState();
    getvalue();
  }

  void getvalue() async { //função que busca o valor
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));
    if(response.statusCode == 200){
      final data = jsonDecode(response.body); // transforma as propriedades em tipos de dados

      setState(() {
        value = data[0]["title"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator() : Text("$value")
      ),
    );
  }
}