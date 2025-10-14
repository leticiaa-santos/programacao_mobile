import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFCFCFC),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Letícia Oliveira",
            style: GoogleFonts.shareTech(),
          ),
          backgroundColor: const Color(0xFF242424),
          toolbarHeight: 90,
          titleTextStyle: const TextStyle(
            color: Color(0xFFFCFCFC),
            fontSize: 30,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              // Container com imagem e textos
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
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
                      // Imagem circular
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        width: 150.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/perfil.jfif'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Textos ao lado da imagem
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eu sou Letícia Oliveira",
                            style: GoogleFonts.shareTech(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "Desenvolvedora Back-end",
                            style: GoogleFonts.shareTech(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Linha com "Sobre mim"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
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
                  const SizedBox(
                    width: 100,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Texto sobre você
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Sou uma desenvolvedora apaixonado por criar experiências digitais "
                  "bonitas e funcionais. Tenho foco em Back-end, mas sempre procurando aprender"
                  "algo novo. Minha experiência ainda não é muito grande, mas estou animada com"
                  "o que aprendi até agora e animada com o que ainda está por vir.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Atualmente sou jovem aprendiz na Bosch Campinas, com a parceria de realizar o "
                  "Técnico em Desenvolvimento de Sistemas no Senai, aqui pude aprender muito e "
                  "aqui nesse portfólio você pode descobrir mais sobre minhas skills!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Ícones das redes sociais
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialIcon(FontAwesomeIcons.facebook, Colors.blue),
                  _buildSocialIcon(FontAwesomeIcons.twitter, Colors.lightBlue),
                  _buildSocialIcon(FontAwesomeIcons.linkedin, Colors.blueAccent),
                  _buildSocialIcon(FontAwesomeIcons.github, Colors.black),
                  _buildSocialIcon(FontAwesomeIcons.googlePlus, Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função helper para os ícones sociais
  Widget _buildSocialIcon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color.withOpacity(0.1),
        child: IconButton(
          icon: Icon(icon, color: color, size: 20),
          onPressed: () {
            launchUrl(Uri.parse("https://linkedin.com/in/seuPerfil"));
          },
        ),
      ),
    );
  }
}
