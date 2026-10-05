import 'dart:collection';
import 'dart:convert';
import 'dart:io';

void main() {
  // ================== Aula 6 ================= //
  final int diaSemana;
  print("Digite um numero entre 0-4 para o dia da semana: ");
  diaSemana = int.parse(stdin.readLineSync(encoding: utf8) ?? "1");
  var diaDaSemana = '';
  // switch case bem simples e rápido \ switch expressions
  diaDaSemana = switch (diaSemana) {
    0 => "Segunda-feira", // Casos...
    1 => "Terça-feira",
    2 => "Quarta-feira",
    3 => "Quinta-feira",
    4 => "Sexta-feira",
    _ => "Dia inválido!", // Valor padrão a ser assumido se não receber valor válido.
  };

    // // Valor que vai ussumir     
    // diaDaSemana = switch(diaSemana){ // Valor que será utilizado para os casos
    //  1 => 'Teste',
    //  2 => 'Teste 2',
    // }

  
  print(diaDaSemana);
  
  // Muito codigo !
  //   switch (diaSemana) {
  //     case 1:
  //       diaDaSemana = 'Segunda';
  //     case 2:
  //       diaDaSemana = 'Terça';
  //     case 3:
  //       diaDaSemana = 'Quarta';
  //     case 4:
  //       diaDaSemana = 'Quinta';
  //     case 5:
  //       diaDaSemana = 'Sexta';
  //     default:
  //       diaDaSemana = '';
  //   }
  //   if (diaDaSemana.isEmpty) {
  //     print("Dia da semana não definido!");
  //   } else {
  //     print("Dia da semana" + diaDaSemana)
  //   }
}
