import 'dart:async';

class Washmachine {
  // Para atributos usamos o camel case | Primeira minuscula e segunda maiuscula
  TypeMachineEnum _type;
  List<String> _clothes = [];
  int _clothingMaxQuantity;
  bool _isFree = false;
  Duration _timeWash;

  Washmachine(
    this._type,
    this._clothingMaxQuantity,
    this._clothes,
    this._isFree,
    this._timeWash,
  );
  // Seta o tipo
  set type(TypeMachineEnum newType) {
    _type = newType;
  }

  // retorna tipo
  TypeMachineEnum get type => _type;
  // Seta quantidade roupas
  set clothes(List<String> newClothes) {
     if (newClothes.length > _clothingMaxQuantity) {
      print("A capacidade de roupas ultrapassa o limite da maquina!");
      return;
    } else {
      _clothes = newClothes;
    }
  }

  // Retorna quantidade de roupas
  int get clothingQuantity => _clothes.length;
  // seta quantidade maxima de roupas
  set clothingMaxQuantity(int clothing_max_qty) {
    this._clothingMaxQuantity = clothing_max_qty;
  }

  int get clothingMaxQuantity => _clothingMaxQuantity;

  set isFree(bool isFreeStat) {
    this._isFree = isFreeStat;
  }

  bool get isFree => _isFree;

  void showInformationMachine() {
    print(
      "----------------| Maquina ${type.description} ${type.icon}  |-------------",
    );
    print("");
    print("Status: ${_isFree ? "Livre para uso" : "Espere o tempo acabar"}");
    print("Quantidade maxima de roupas: $_clothingMaxQuantity");

    print("¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨");
  }

  void startWashMachine() {
    if (_isFree == false) {
      print(
        "Maquina está em uso, não pode ser começar outra lavagem no momento..",
      );
      return;
    } else if (_clothes.isEmpty) {
      print("Coloque as roupas dentro da maquina!");
      return;
    }
    _isFree = false;
    int remainingSeconds = _timeWash.inSeconds;

    print("Iniciando lavagem! Roupas: ${_clothes.join()}\n");
    Timer.periodic(Duration(seconds: 1), (timer) {
      remainingSeconds--;

      if (remainingSeconds > 0) {
        print("lavando.... Tempo de lavagem restante: $remainingSeconds");
      } else {
        print("\n¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨");
        print("Lavagem finalizada!");
        print("Roupas limpas 🧽: $_clothes");
        _clothes = [];
        _isFree = true;
        timer.cancel(); // Importante para parar o precesso da lavagem
      }
    });
    return;
  }
}

// Para enum e classes usamos pascal case | Primeira maiuscula e segunda maiuscula
enum TypeMachineEnum {
  secadora(description: "secadora", icon: "👕"),
  lavadora(description: "lavadora", icon: "🫧");

  TypeMachineEnum({required this.description, required this.icon});

  final String description;
  final String icon;
}

void main() {
  Washmachine washmachine1 = Washmachine(
    TypeMachineEnum.lavadora,
    15,
    ['👕', '👕', '👕', '👕'],
    true,
    Duration(seconds: 3),
  );

  washmachine1.showInformationMachine();
  washmachine1.startWashMachine();
}
