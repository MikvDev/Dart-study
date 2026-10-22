
void main() {
  // ========================== Aula 7 ========================== //
  //   // Estruturas de repetições
  // ------------- WHILE -----------------
  //   // Estrutura de repetição com while, ele executa até ser verdade.
  //   var i = 10;

  //   while (i < 10) {
  //     print("Morte ao sid!");
  //     i++;
  //   }
  //  // Aqui, sempre vai executar o primeiro, mesmo que seja verdade!
  //   do {
  //     print("Teste");
  //     i++;
  //   } while (i < 10);

  // }
  // ------------- REVISÂO -----------------
  // Var, podemos reatibuir quantas vezes quisermos, mas precisa ser o mesmo tipo de dado.
  // var dia;
  // print(dia);
  // var nome = "Miguel";
  // nome = 2;
  // // final, podemos atribuir apenas uma fez a outro valor. Ao ser criado não precisamos atribuir valor. Precisa ter o mesmo tipo de dado.
  // final num;
  // num = "Ola";
  // print(num);
  // // Const, variavel que não é mutavel, dado congelado sem reatribuição e precisamos declarar seu valor ao ser criado.
  // const day_week = 1; // Precisa ser inicializado


  // ------------- DO WHILE -----------------
  // Vai executar tudo que esta dentro do escopo do "Do"
  // var z = 0;
  // do {
  //   print("Hello world!");
  //   z++;
  // } while (z < 10); // Não podemos atribuir mais ações a partir do while. Aqui é a condição.

  // Bloco com while sem "do"
  // while(z < 10){

  //   var name = int.parse(stdin.readLineSync(encoding: utf8) ?? "Teste");
  // }

  // ------------- FOR -----------------

  for (var i = 0; i < 1000; i++) {
    print("Olá, numero: $i"); // Template string no dart 
  }
}
