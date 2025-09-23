import 'package:flutter/material.dart';

void main() {
  runApp(const Home()); //runApp é a função responsável por rodar o app
}

class Home extends StatelessWidget { //Tela estática, digite "st" para selecionar o tipo da tela
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//prover os elementos para a tela
		home: Scaffold(//separar a tela em 2 partes. Barra superior e conteúdo
			appBar: AppBar(title: Text("Olá, esse é o meu app")),
			body: 
			Column(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [ //filhos da coluna
					Container(
						width: 80,
						height: 80,
						decoration: BoxDecoration(
							color: Color(0xFFCF1616),
							borderRadius: BorderRadius.circular(40)
						),

						child: Text("Olá", 
							style: TextStyle(
								fontSize: 50,
								color: Colors.white,
								),
								textAlign: TextAlign.center,
							) 
					),

					Container(
						width: 80,
						height: 80,
						decoration: BoxDecoration(
							color: Color(0xFFE9DA11),
							borderRadius: BorderRadius.circular(40)
						),
					),

					Container(
						width: 80,
						height: 80,
						decoration: BoxDecoration(
							color: Color(0xFF25B611),
							borderRadius: BorderRadius.circular(40)
						),
					),

					Container(
						width: 80,
						height: 80,
						decoration: BoxDecoration(
							color: Color(0xFF1420CF),
							borderRadius: BorderRadius.circular(40)
						),
					),
					

					SizedBox(
						height: 80,
					),

					Row(
						mainAxisAlignment: MainAxisAlignment.spaceAround,
						children: [
							Container(
								width: 50,
								height: 50,
								color: Color(0xFF6514CF),
							),

							Container(
								width: 50,
								height: 50,
								color:Color(0xFF6514CF),
							),

							Container(
								width: 50,
								height: 50,
								color: Color(0xFF6514CF),
							),
						],
					)
				],
			),
			
		)
    );
  }
}