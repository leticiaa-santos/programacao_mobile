import 'package:appassets/main.dart';
import 'package:flutter/material.dart';

class TelaCarrinho extends StatelessWidget {
  const TelaCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Tela carrinho")),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaHome()));
            }, child: Icon(Icons.arrow_back),)
            ]
            
          ),
          
        ),
      ),
    );
  }
}