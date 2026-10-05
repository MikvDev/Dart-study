import 'dart:convert';
import 'dart:io';

void main() {
  // =================== Aula 3 ======================== // 
  // const e final --- var
  // String
  var nome = "Miguel"; // Pode sofrer modificações

  nome = "Miguel Vargas";
  const String nameHouse =
      "House Miguel"; // Preciso atribuir valor quando criado
  final nameUser; // pode assinalar novamente uma vez a variavel com outro valor, e não precisa atribuir um valor ao ser inicializada.
  nameUser = "Miguel V.F";

  print(nameUser);
  print(nome);
  print(nameHouse);

  // ===================== Lendo dados ==================== // 
  // Metodo para ler entrada de dados stdin.readLineSync(encoding: utf8);
  print("Digite seu nome:");
  final String name = stdin.readLineSync(encoding: utf8) ?? "Usuário sem nome";
  
  print("Seu nome é: " + name);
   
  //
}
