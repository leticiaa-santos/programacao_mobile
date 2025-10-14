import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/main.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}



class _MySkillsState extends State<MySkills> {

  String descricao = "Descrição das ferramentas";

  void descricaoflutter(){
    setState(() {
      descricao = "Framework da Google para criar aplicativos modernos e responsivos para Android, iOS e Web usando uma única base de código.";
    });
  } 
  void descricaojava(){
    setState(() {
      descricao = "Linguagem orientada a objetos amplamente utilizada no desenvolvimento de aplicações robustas e seguras, especialmente para back-end e sistemas corporativos.";
    });
  } 
  void descricaopython(){
    setState(() {
      descricao = "Linguagem versátil e intuitiva, muito usada em automação, ciência de dados, inteligência artificial e desenvolvimento web.";
    });
  } 
  void descricaoreact(){
    setState(() {
      descricao = "Biblioteca JavaScript focada na criação de interfaces dinâmicas e interativas, ideal para o desenvolvimento de aplicações web modernas.";
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFFFFF),
                foregroundColor: Color(0xFF000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color(0xFF000000)),
                ),
              ),
              child: Icon(Icons.arrow_back),
            ),
          ),

          

         SizedBox(height: 20),
          Center(
            child: Text("Minhas Ferramentas",
              style: GoogleFonts.shareTech(
                fontSize: 23,
              ),
            ),
          ),
          
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Essas são algumas das principais ferramentas e tecnologias que utilizo no meu dia a dia. "
              "Com elas, desenvolvo aplicações completas e eficientes, explorando desde a lógica de programação "
              "até a criação de interfaces modernas e intuitivas. \n\n"
              "Cada uma dessas ferramentas tem um papel importante no meu aprendizado e na minha rotina como desenvolvedora. "
              "Gosto de buscar novas formas de aplicar o que aprendo, combinando criatividade e boas práticas para entregar "
              "resultados de qualidade. Além disso, estou sempre explorando novas tecnologias e aprimorando meus conhecimentos "
              "para evoluir constantemente na área da programação.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ),

          SizedBox(
            height: 60,
          ),

          // Linha de imagens das ferramentas
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: descricaojava,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      Image.asset("assets/images/java.png", fit: BoxFit.contain),
                ),
              ),
              GestureDetector(
                onTap: descricaoflutter,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/flutter.png",
                      fit: BoxFit.contain),
                ),
              ),
              GestureDetector(
                onTap: descricaopython,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/python.png",
                      fit: BoxFit.contain),
                ),
              ),
              GestureDetector(
                onTap: descricaoreact,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/react.webp",
                      fit: BoxFit.contain),
                ),
              ),
            ],
          ),


          SizedBox(
            height: 60,
          ),


          Center(
            child: Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              color: Colors.black,         // cor da caixinha
              child: Text(
                descricao,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  color: Colors.white,     // cor do texto
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
