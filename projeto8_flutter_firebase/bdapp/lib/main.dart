import 'package:bdapp/post.dart';
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
      debugShowCheckedModeBanner: false,
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF4F4F4)
      ),
      
      home: Scaffold( 
        appBar: AppBar(
          title: Text("App com firebase - Get", 
            style: TextStyle(color: Color(0xFFF4F4F4), 
            ),
          ),

          centerTitle: true,
          backgroundColor: Color(0xFF0A57A0),
        
        ),

        
    
        body: Center(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(
                  height: 20,
                ),

                Text("Temperatura: $temperature°",
                style: TextStyle(
                  fontSize: 18
                ),
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => PostPage()));
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0A57A0),
                  foregroundColor: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                ), 
                
                child: Text("Tela Post")
                
                ),
              ],
            )
          
        )
      ),
    );
  }
}