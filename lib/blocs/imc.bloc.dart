import 'package:flutter/widgets.dart';

class ImcBloc {
  var heightCtrl = TextEditingController();
  var weightCtrl = TextEditingController();
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text);
    double imc = weight / (height * height);

    String imcP = imc.toStringAsPrecision(2);

    if (imc < 18.6) {
      result = "Abaixo do peso ($imcP)";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso Ideal ($imcP)";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso ($imcP)";
    } else if (imc >= 24.9 && imc <= 34.9) {
      result = "Obesidade Grau I ($imcP)";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade Grau II ($imcP)";
    } else if (imc > 40) {
      result = "Obesidade Grau III ($imcP)";
    }
  }
}
