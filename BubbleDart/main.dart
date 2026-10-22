import 'dart:io';

import 'washMachine.dart';

Future<void> LogoAnimation() async {
  List<String> frames = [
    "   .   \n",
    "  ( )  \n",
    " (   ) \n",
    "(     )\n",
    "🫧 BUBBLE DART 🫧\n  Lavanderia Tech",
  ];

  for (var frame in frames) {
    // 1. Limpa o terminal completamente
    stdout.write("\x1B[2J\x1B[H");

    // 2. Desenha o frame centralizado com uma cor azul brilhante (\x1B[36m)
    stdout.write("\x1B[36m$frame\x1B[0m\n");

    // 3. Espera 250 milissegundos antes do próximo frame
    await Future.delayed(Duration(milliseconds: 250));
  }

  // Dá uma pausa final na logo antes de abrir o resto do sistema
  await Future.delayed(Duration(seconds: 1));
  stdout.write("\x1B[2J\x1B[H"); // Limpa a tela uma última vez
}

void main() async {
  await LogoAnimation();
  Washmachine washmachine1 = new Washmachine(
    TypeMachineEnum.lavadora,
    111,
    [
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
      '👕',
    ],
    true,
    Duration(seconds: 10),
  );

  washmachine1.showInformationMachine();
  washmachine1.startWashMachine();

  try {} on ArgumentError catch (error) {
    print("|---------------------------------------|");
    print("Ocorreu um erro de configuração:");
    print("${error.message}");
    print("|---------------------------------------|");
  } catch (error) {
    print("Ocorreu um erro desconhecido: $error");
  }
}
