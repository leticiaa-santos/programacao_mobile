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
        appBar: AppBar(
          title: Text(
            "Letícia Oliveira",
            style: GoogleFonts.shareTech(),
          ),
          backgroundColor: Color(0xFF242424),
          toolbarHeight: 90,
          titleTextStyle: TextStyle(
            color: Color(0xFFFCFCFC),
            fontSize: 30,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              // Aqui colocamos a linha (Row) com a imagem e os textos
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Imagem circular
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: 150.0, // Largura do círculo
                      height: 150.0, // Altura do círculo
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forma circular
                        image: DecorationImage(
                          image: AssetImage('assets/images/perfil.jfif'),
                          fit: BoxFit.cover, // Ajusta a imagem para cobrir o círculo
                        ),
                      ),
                    ),
                    // Texto ao lado da imagem
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Eu sou Letícia Oliveira", 
                          style: GoogleFonts.shareTech(
                            fontSize: 24.0, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8.0), // Espaço entre os textos
                        Text(
                          "Desenvolvedora Back-end", 
                          style: GoogleFonts.shareTech(
                            fontSize: 18.0, 
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
