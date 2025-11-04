import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  
  TextEditingController newTemp = TextEditingController();

  @override
  void initState () { //função que reinicia o estado da página
    super.initState();
    menssage = "";
    erro = "";
  }

  String erro = ""; //variável para erro
  String menssage = ""; //alertar que deu certo

  //Funcao post
  //Future, porque a confirmação acontece no futuro
  Future<void> postValue() async {
    try{
      FirebaseFirestore.instance.collection("monitoramento").add(
        {
          "temperatura": newTemp.text,
        }
      );

      setState(() {
        menssage = "Dados enviados com sucesso";
      });

      Timer(Duration(seconds: 4), (){
        setState(() {
          menssage = "";
        });
      });
    
    } catch (e) {
      setState(() {
        erro = "Erro ao enviar dados";
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF4F4F4)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App com firebase - Post", 
            style: TextStyle(color: Color(0xFFF4F4F4), 
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF0A57A0),
        ),
        body: Center(
          child: Column(
            children: [

              SizedBox(height: 20,),

              Text("Insira a sua temperatura"),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 300, vertical: 30),
                child: TextFormField(
                  controller: newTemp,
                  
                  decoration: InputDecoration(
                    hint: Text("30", style: TextStyle(color: Color(0xFF8D8D96)),),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0A57A0)
                      )
                    )
                  ),
                ),
              ),
              
              ElevatedButton(onPressed: postValue, child: Text("Inserir dado"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0A57A0),
                foregroundColor: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                )
              )
              ),
              Text("$menssage"),
              Text("$erro")
            ],
          ),
        ),
      ),
    );
  }
}