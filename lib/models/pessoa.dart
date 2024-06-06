class Pessoa {
  String _nomePaciente = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nomePaciente, double peso, double altura) {
    _nomePaciente = nomePaciente;
    _peso = peso;
    _altura = altura;
  }

  void setNomePaciente(String nomePaciente) {
    _nomePaciente = nomePaciente;
  }

  String getNomePaciente() {
    return _nomePaciente;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }
}
