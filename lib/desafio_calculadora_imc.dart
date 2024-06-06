import 'dart:io';

import 'package:desafio_calculadora_imc/exception/nao_vazio_exception.dart';
import 'package:desafio_calculadora_imc/models/calculadora.dart';
import 'package:desafio_calculadora_imc/models/console_utils.dart';

// ignore: non_constant_identifier_names
double executeImc(String nome, double peso, double altura) {
  var calc = Calculadora(nome, peso, altura);
  return calc.calculaImc();
}

void execute() {
  String? nome;
  double? peso;
  double? altura;

  print("Bem Vindo a Calculadora de IMC!");
  do {
    nome = ConsoleUtils.lerStringComTexto("Digite o Nome:");
    try {
      if (nome.trim() == "") {
        throw NomeInvalidoException();
      }
    } catch (e) {
      print(e);
    }
  } while (nome == "");

  do {
    peso = ConsoleUtils.lerDoubleComTexto("Digite o Peso");
    try {
      if (peso == null) {
        //print(PesoInvalidoException());
        throw PesoInvalidoException();
      }
    } catch (e) {
      print(e);
    }
  } while (peso == null);

  do {
    altura = ConsoleUtils.lerDoubleComTexto(
        "Digite a Altura em metros, exemplo: 1.75");
    try {
      if (altura == null) {
        throw AlturaInvalidoException();
      }
    } catch (e) {
      print(e);
    }
  } while (altura == null);

  var calc = Calculadora(nome, peso, altura);
  if (altura < 3.0) {
    var result = calc.calculaImc();
    print("Resultado do seu IMC: ${calc.calculaImc()}");
    print("Ola, $nome, voce esta na CLASSIFICAÇÃO de:");
    switch (result) {
      case < 16:
        print("Magreza Grave");
        break;
      case >= 16 && < 17:
        print("Magreza Moderada");
        break;
      case >= 17 && < 18.5:
        print("Magreza Leve");
        break;
      case >= 18.5 && < 25:
        print("Saudavel");
        break;
      case >= 25 && < 30:
        print("Sobrepeso");
        break;
      case >= 30 && < 35:
        print("Obesidade Grau I");
        break;
      case >= 35 && < 40:
        print("Obesidade Grau II (severa)");
        break;
      case >= 40:
        print("Obesidade Grau III (morbida)");
        break;
      default:
        print("Invalido");
        exit(0);
    }
  }
}
