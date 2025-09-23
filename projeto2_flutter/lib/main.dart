import 'package:flutter/material.dart';

void main() {
  runApp( Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testando containers"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: 
                      Text("1", style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                      ),
                      ),
                      
                  ),
                ),

                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: 
                      Text("2", style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                      ),
                      ),
                      
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 80,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: 
                      Text("3", style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                      ),
                      ),
                      
                  ),
                ),

                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: 
                      Text("4", style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                      ),
                      ),
                      
                  ),
                ),
              ],
            )

          ],
        )
      ),
    );
  }
}