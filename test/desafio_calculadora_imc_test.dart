import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Teste Errado', () {
    expect(app.executeImc("nome", 80.2, 1.79),
        greaterThanOrEqualTo(25.16)); //Expected Errado 24.97
  });

  test('Teste Certo', () {
    expect(app.executeImc("nome", 90, 1.79),
        greaterThanOrEqualTo(25.16)); //Expected Certo 28.09
  });
}
