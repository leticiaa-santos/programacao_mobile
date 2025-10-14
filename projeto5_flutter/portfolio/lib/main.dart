import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/skills.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFCFCFC),
      ),
      home: const Home(), 
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF242424),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: 170.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, 
                          width: 4.0,          
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/perfil.jfif'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Eu sou Letícia Oliveira",
                          style: GoogleFonts.shareTech(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFEFEFE),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Desenvolvedora Back-end",
                          style: GoogleFonts.shareTech(
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFFEFEFE),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Título "Sobre mim"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 10,
                  ),
                ),
                Text(
                  "Sobre mim",
                  style: GoogleFonts.shareTech(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                  ),
                ),
              ],
            ),

            SizedBox(height: 8),

            // Texto de apresentação
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Sou uma desenvolvedora apaixonada por criar experiências digitais "
                "bonitas e funcionais. Tenho foco em Back-end, mas sempre procurando aprender "
                "algo novo. Minha experiência ainda não é muito grande, mas estou animada com "
                "o que aprendi até agora e com o que ainda está por vir.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Atualmente sou jovem aprendiz na Bosch Campinas, com a parceria de realizar o "
                "Técnico em Desenvolvimento de Sistemas no Senai. Aqui pude aprender muito e "
                "nesse portfólio você pode descobrir mais sobre minhas skills!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
            ),

            SizedBox(height: 40),

            // Ícones sociais
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(FontAwesomeIcons.linkedin, Colors.blueAccent,
                    "https://www.linkedin.com/in/leticia-oliveira-801aa42a7/"),
                _buildSocialIcon(FontAwesomeIcons.github, Colors.black,
                    "https://github.com/leticiaa-santos"),
              ],
            ),

            SizedBox(height: 40),

            // Botão para skills
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySkills()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFFFFF),
                foregroundColor: const Color(0xFF000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black),
                ),
              ),
              child: Text("Veja minhas skills"),
            ),
          ],
        ),
      ),
    );
  }

  // Função para criar ícones de redes sociais com link
  Widget _buildSocialIcon(IconData icon, Color color, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color.withOpacity(0.1),
        child: IconButton(
          icon: Icon(icon, color: color, size: 20),
          onPressed: () async {
            final Uri uri = Uri.parse(url);
            if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
              throw Exception('Não foi possível abrir $url');
            }
          },
        ),
      ),
    );
  }
}
