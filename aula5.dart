import 'dart:convert';
import 'dart:io';

void main() {
  // final int age;
  // final String name;
  // print("Digite seu nome: ");
  // name = stdin.readLineSync(encoding: utf8) ?? "";
  // print("Digite sua idade: ");
  // age = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
  // if (age > 18) {
  //   print(name + " você possue mais de 18 anos!");
  // } else {
  //   print(
  //     name +
  //         ", infelizmente você não pode entrar! Não possue mais de 18 anos..",
  //   );
  // }

  final int diaSemana;
  print("Digite um numero(1-5) para o dia da semana:");
  diaSemana = int.parse(stdin.readLineSync(encoding: utf8) ?? "1");

  switch (diaSemana) {
    case 1:
      print("Segunda-feira!");
    case 2:
      print("Terça-feira!");
    case 3:
      print("Quarta-feira!");
    case 4:
      print("Quinta-feira!");
    case 5:
      print("Sexta-feira!");
    default:
      print("Dia invalido!");
  }
  print("Código finalizado!");
}
