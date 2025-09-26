import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  
  int _numero = 0;

  void aumentar (){
    setState(() {
      _numero ++;
    });
  }

  void diminuir (){
    setState(() {
      if(_numero > 0){
        _numero --;
      } else {
        _numero = 0;
      }
    });
  }

  void resetar (){
    setState(() {
      _numero = 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Vamos Contar!", 
          style: TextStyle(fontSize: 30, 
          color: Colors.white, 
          fontWeight: FontWeight.bold),
          
          ), 
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          toolbarHeight: 90,),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://www.animativa.com/wp-content/uploads/2024/10/post_27413.jpg", width: 500,),
            Text("$_numero", 
            style: TextStyle(fontSize: 130)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                    
                  ),
                  onPressed: (){
                  aumentar();
                }, child: Icon(Icons.add)),

                SizedBox(
                  width: 30,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                  diminuir();
                }, child: Icon(Icons.remove)),

                SizedBox(
                  width: 30,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                  resetar();
                }, child: Icon(Icons.restore)),

              ],
            )
          ],
        ),
      ),
    );
  }
}