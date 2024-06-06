class NomeInvalidoException implements Exception {
  String error1() => "Nome nao pode ser vazio";

  @override
  String toString() {
    return "NomeInvalidoException: ${error1()}";
  }
}

class PesoInvalidoException implements Exception {
  String error2() => "Peso nao pode ser conter letras";

  @override
  String toString() {
    return "PesoInvalidoException: ${error2()}";
  }
}

class AlturaInvalidoException implements Exception {
  String error3() => "Altura nao pode ser conter letras";

  @override
  String toString() {
    return "AlturaInvalidoException: ${error3()}";
  }
}
