import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  List<dynamic>? valores;
  Map<String, TextEditingController> controladores = {};



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
          for (dynamic doc in data){
            controladores[doc.id] = TextEditingController(); //para cada documento retornado, tem um textediting exclusivo
          }
        });
      }
      
    );
  }

  Future<void> PutValue (String id) async {
    FirebaseFirestore.instance.collection("monitoramento").doc(id).set(
      {
        "temperatura": controladores[id]!.text,
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("App com firebase - Put",
          style: TextStyle(color: Color(0xFFF4F4F4)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0A57A0),
        ),
        body: valores == null ? Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: valores!.length,
          itemBuilder: (context, index) {
            final item = valores![index];
            
            return ListTile(
              title: Text("Temperatura atual: ${item["temperatura"]}"),
              subtitle: Column(
                children: [
                  TextField(
                    controller: controladores[item.id],
                  ),
                  ElevatedButton(onPressed: (){PutValue(item.id);}, child: Text("Alterar"))
                ],
              ),
            );
          
          },
        )
      ),
    );
  }
}