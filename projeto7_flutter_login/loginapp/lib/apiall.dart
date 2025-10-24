import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiAll extends StatefulWidget {
  const ApiAll({super.key});

  @override
  State<ApiAll> createState() => _ApiAllState();
}

class _ApiAllState extends State<ApiAll> {

  List<dynamic>? value; // lista que armazena os valores recebidos

  @override
  void initState() { //resetar o estado da página quando carregada novamente
  super.initState();
  getvalue();
  }

  void getvalue() async { //função que busca o valor
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));
    if(response.statusCode == 200){
      final data = jsonDecode(response.body); // transforma as propriedades em tipos de dados

      setState(() {
        value = data["products"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator() : 
        Center(
          child: ListView.builder(itemCount: value!.length, 
          itemBuilder: (context, index){
            final item = value![index];
            return Container(
              width: 150,
              height: 150,
              color: Colors.deepPurple,
              child: Center(
                child: Text("${item["title"]}"),
              ),
            );
          },
          )
        )
        
      ),
    );
  }
}