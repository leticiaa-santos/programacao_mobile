import 'dart:io';
import 'zoomange.dart';
import 'main.dart';


void menu () {

  print("==================== ZOOMANGE ===================");

  print("----------- Menu de opções --------");
  print("""
1 - Cadastrar novo animal
2 - Listar os animais cadastrados
3 - Editar dados de um animal
4 - Remover um animal
5 - Listar apenas um porte
6 - Sair""");

  stdout.write("Escolha uma opção: ");
  int escolha = int.parse(stdin.readLineSync()!);

  switch(escolha){

    case 1:
      cadastrar();
      break;

    case 2:
      listar_animais();
      break;

    case 3:
      editar_animal();
      break;

    case 4:
      remover_animal();
      break;

    case 5:
      listar_especifico();
      break;

    case 6:
      print("Saindo...");
  }

}



void cadastrar () {

  print("Portes para cadastro:");

  print("""
1 - Pequeno
2 - Médio
3 - Grande""");

  stdout.write("Em qual porte quer cadastrar: ");
  int porte = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o nome do animal: ");
  String nome_animal = stdin.readLineSync()!;

  stdout.write("Informe a idade do animal: ");
  int idade_animal = int.parse(stdin.readLineSync()!);

  switch(porte) {
    case 1:
      Pequeno novoAnimal = Pequeno(nome: nome_animal);
      novoAnimal.alterar_idade = idade_animal;
      pequenoPorte.add(novoAnimal);
      print("O animal $nome_animal foi cadastrado!");
      break;
    
    case 2:
      Medio novoAnimal = Medio(nome: nome_animal);
      novoAnimal.alterar_idade = idade_animal;
      medioPorte.add(novoAnimal);
      print("O animal $nome_animal foi cadastrado!");
      break;

    case 3:
      Grande novoAnimal = Grande(nome: nome_animal);
      novoAnimal.alterar_idade = idade_animal;
      grandePorte.add(novoAnimal);
      print("O animal $nome_animal foi cadastrado!");
      break;

    default:
      print("Opção inválida");
      break;
  }

  menu();

}


void listar_animais () {

  print("============= Porte pequeno =============");
  pequenoPorte.forEach((animal){
    print("---------------------");
    print("Nome: ${animal.nome}");
    print("Idade: ${animal.mostrar_idade}");
    print("---------------------");
  });

  print("============== Porte médio ===============");
  medioPorte.forEach((animal){
    print("---------------------");
    print("Nome: ${animal.nome}");
    print("Idade: ${animal.mostrar_idade}");
    print("---------------------");
  });

  print("============== Porte grande ===============");
  grandePorte.forEach((animal){
    print("---------------------");
    print("Nome: ${animal.nome}");
    print("Idade: ${animal.mostrar_idade}");
    print("---------------------");
  });

  menu();

}


void editar_animal () {
  print("Portes para edição:");

  print("""
1 - Pequeno
2 - Médio
3 - Grande""");

  stdout.write("Escolha o porte para ver os animais: ");
  int porte = int.parse(stdin.readLineSync()!);

  List<Animal> animais_editar = [];

  switch(porte) {
    case 1:
      animais_editar = pequenoPorte;
      break;
    
    case 2:
      animais_editar = medioPorte;
      break;

    case 3:
      animais_editar = grandePorte;
      break;
    
    default:
      print("Opção inválida");
      break;
  }

  if (animais_editar.isEmpty) {
    print("Não há animais desse porte");
  }

  print("Animais do porte selecionado");
  for (int i = 0; i < animais_editar.length; i++){
    print("${i + 1} - ${animais_editar[i].nome}");
  }

  stdout.write("Informe o número do animal que deseja editar: ");
  int animal_escolha = int.parse(stdin.readLineSync()!);

  if (animal_escolha < 1 || animal_escolha > animais_editar.length) {
    print("Opção inválida.");
    return;
  }

  Animal animal_escolhido = animais_editar[animal_escolha - 1];

  stdout.write("Informe o novo nome do animal (se não quiser editar pressione ENTER): ");
  String novo_nome = stdin.readLineSync()!;

  if (novo_nome.isNotEmpty){
    animal_escolhido.nome = novo_nome;
  }

  stdout.write("Informe a nova idade do animal (se não quiser editar pressione ENTER): ");
  String nova_idade_input = stdin.readLineSync()!;

  if (nova_idade_input.isNotEmpty){
    int nova_idade = int.parse(nova_idade_input);
    animal_escolhido.alterar_idade = nova_idade;
  }

  print("o animal ${animal_escolhido.nome} foi editado");

  menu();
}


void remover_animal () {
  print("Portes para exclusão:");

  print("""
1 - Pequeno
2 - Médio
3 - Grande""");

  stdout.write("Escolha o porte para ver os animais: ");
  int porte = int.parse(stdin.readLineSync()!);

  List<Animal> animais_excluir = [];

  switch(porte) {
    case 1:
      animais_excluir = pequenoPorte;
      break;
    
    case 2:
      animais_excluir = medioPorte;
      break;

    case 3:
      animais_excluir = grandePorte;
      break;
    
    default:
      print("Opção inválida");
      break;
  }

  if (animais_excluir.isEmpty) {
    print("Não há animais desse porte");
  }

  print("Animais do porte selecionado");
  for (int i = 0; i < animais_excluir.length; i++){
    print("${i + 1} - ${animais_excluir[i].nome}");
  }

  stdout.write("Informe o número do animal que deseja excluir: ");
  int animal_escolha = int.parse(stdin.readLineSync()!);

  if (animal_escolha < 1 || animal_escolha > animais_excluir.length) {
    print("Opção inválida.");
    return;
  }

  animais_excluir.removeAt(animal_escolha - 1);
  print("O animal foi excluído com sucesso");

  menu();
}


void listar_especifico () {
  print("Portes para exclusão:");

  print("""
1 - Pequeno
2 - Médio
3 - Grande""");

  stdout.write("Escolha o porte para ver os animais: ");
  int porte = int.parse(stdin.readLineSync()!);

  switch(porte) {
    case 1: 
      print("Animais de pequeno porte:");

      pequenoPorte.forEach((animal){
        print("---------------------");
        print("Nome: ${animal.nome}");
        print("Idade: ${animal.mostrar_idade}");
        print("---------------------");
      });
      break;

    case 2:
      print("Animais de médio porte:");

      medioPorte.forEach((animal){
        print("---------------------");
        print("Nome: ${animal.nome}");
        print("Idade: ${animal.mostrar_idade}");
        print("---------------------");
      });
      break;

    case 3:
      print("Animais de grande porte:");

      grandePorte.forEach((animal){
        print("---------------------");
        print("Nome: ${animal.nome}");
        print("Idade: ${animal.mostrar_idade}");
        print("---------------------");
      });
      break;

    default:
      print("Opção inválida");
      break;
  }

  menu();
}