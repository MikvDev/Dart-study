import 'dart:convert';
import 'dart:io';

void main() {
  var final_grade = 0.0;

  for (var i = 0; i < 4; i++) {
    
    print("Digite sua nota:");
    var grade = int.parse(stdin.readLineSync(encoding: utf8) ?? "0");
    final_grade += grade;
    print("============================================");
  }
  final avarage_grade = final_grade / 4;
  print("Sua media foi: $avarage_grade");

  if (avarage_grade > 6) {
    print("Aluno aprovado!");
  } else {
    print("Aluno em recuperação!");
  }
}
