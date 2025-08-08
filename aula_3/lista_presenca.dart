import 'dart:io';

void main () {
  List<String> lista_nomes = ["Ana", "Beatriz", "Caio", "Danilo"];

  List<String> presentes = [];

  lista_nomes.forEach((String i){
    print("\n""O aluno $i está presente? sim/não");
    String? presenca = stdin.readLineSync();

    if(presenca == "sim"){
      presentes.add(i);
    }
  });
  
  print("\n""Alunos presentes: " "\n" "${presentes.join("\n")}");
}