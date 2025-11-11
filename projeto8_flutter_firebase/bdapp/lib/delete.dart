import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {

  List<dynamic>? valores; // irá receber os dados do banco

  @override
  void initState(){ //reiniciar a página
    super.initState();
    getValues();
  }

  void getValues() async {

    //cria instancia do firebase na coleção monitoramento
    //os retornos (snapshots) --> instantâneo
    //ouvir/listar os retornos

    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen(
      (snapshots){
        final data = snapshots.docs;
        setState(() {
          valores = data;
        });
      }
      
    );
  }

  Future<void> deleteValue (String id) async {
    FirebaseFirestore.instance.collection("monitoramento").doc(id).delete();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("App com FireBase - Delete",
          style: TextStyle(color: Color(0xFFF4F4F4), 
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0A57A0),
        ),
        body: valores == null ? Center(child: CircularProgressIndicator(),) :
        ListView.builder(
          itemCount: valores!.length, //Quantos itens irei criar? O tamanho da lista vlores
          itemBuilder: (context, index) { // O que irei criar?
            final item = valores![index];

            return ListTile(
              title: Text("Temperatura:"),
              subtitle: Text("${item["temperatura"]}"),
              trailing: GestureDetector( //detecta o gesto e atribui uma função
                child: Icon(Icons.remove),
                onTap:() {
                  deleteValue(item.id);
                },
              ),
            );
          },
        )
      ),
    );
  }
}