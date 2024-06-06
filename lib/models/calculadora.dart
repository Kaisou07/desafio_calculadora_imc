import 'package:desafio_calculadora_imc/models/pessoa.dart';

class Calculadora extends Pessoa {
  Calculadora(super.nomePaciente, super.peso, super.altura);
  double calculaImc() {
    var imc = getPeso() / (getAltura() * getAltura());
    return imc;
  }
}
