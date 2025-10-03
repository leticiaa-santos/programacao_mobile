import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFCFCFC),
      ),

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text("Letícia Oliveira", style: GoogleFonts.shareTech(),  
        ),
        backgroundColor: Color(0xFF242424),
        toolbarHeight: 90,
        
        titleTextStyle: TextStyle(
          color: Color(0xFFFCFCFC),
          fontSize: 30
        ),
        
        ),

        body: Center(
          child: Column(
            
          ),
        ),
      ),
    );
  }
}