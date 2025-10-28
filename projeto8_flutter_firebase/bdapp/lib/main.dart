import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // função para inicializar os componentes que utilizam o firebase
  await Firebase.initializeApp( // aguarda o firebase inicializar
    options: DefaultFirebaseOptions.currentPlatform
  ); 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetPage(),
    );
  }
}

class GetPage extends StatefulWidget {
  const GetPage({super.key});

  @override
  State<GetPage> createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {

  double? temperature;
  
  @override
  
  void initState () {
    super.initState();
    gettemp();
  }

  void gettemp () {
    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen(
      (snapshot) {
        dynamic data = snapshot.docs.first.data(); //primeiro documento que tem no banco
        setState(() {
          temperature = data['temperatura'];
        });
      }
    );


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("$temperature")
          ]
          
        )
      ),
    );
  }
}