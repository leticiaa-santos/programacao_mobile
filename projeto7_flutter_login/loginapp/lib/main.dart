import 'package:flutter/material.dart';
import 'package:loginapp/api.dart';
import 'package:loginapp/apiall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  String correctUser = "leticia";
  String correctPassword = "1234";

  String erro = "";

  void login_basic () {
    if(user.text == correctUser && password.text == correctPassword){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ApiPage()));
    } else {
      setState(() {
        erro = "Existem credenciais erradas";
      });
    }
  }

  void login_apiall () {
    if(user.text == correctUser && password.text == correctPassword){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ApiAll()));
    } else {
      setState(() {
        erro = "Existem credenciais erradas";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login", 
            style: TextStyle(

            ),
          ),
          centerTitle: true,
           
        ),
      
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Icon(Icons.person, size: 150),

              

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 110, vertical: 20),
                child: TextFormField(
                  controller: user,
                  decoration: InputDecoration(
                    hintText: "Insira seu nome",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF9A5BFF)
                      )
                    )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 110, vertical: 20),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Insira sua senha",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF9A5BFF)
                      )
                    )
                  ),
                ),
              ),
              

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  backgroundColor: Color(0xFF9D4EDD),
                  foregroundColor: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                ),

                onPressed: login_basic, 
                child: 
                Text("Login api basic", 
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  backgroundColor: Color(0xFF9D4EDD),
                  foregroundColor: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                ),

                onPressed: login_apiall, 
                child: 
                Text("Login api all", 
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),



              Text("$erro", 
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFC52121)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}