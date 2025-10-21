import 'package:appassets/telaCarrinho.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaHome(),
    );
  }
}


class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Tela Assets")),
        body: Center(
          child: Column(
            children: [
              Image.network("https://i0.wp.com/pocilga.com.br/wp-content/uploads/2016/04/meninas_superpoderosas-destaque.jpg?fit=800%2C533&ssl=1"),
              Image.asset("assets/images/gatinho.webp", width: 200),
              Text("Esse é o texto da fonte baixada"),
              Text("Esse é o texto com fonte da biblioteca", style: GoogleFonts.oswald()),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCarrinho()));
              }, child: Icon(Icons.arrow_right))
            ],
          ),
        ),
      )
    );
  }
}