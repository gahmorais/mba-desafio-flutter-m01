
double calculateImc(double height, double weight) {
  return weight / (height * height);
}

String statusImc(double imc) {
  if (imc < 20) {
    return "Abaixo do peso";
  } else if (imc < 25) {
    return "Peso normal";
  } else if (imc < 30) {
    return "Sobre peso";
  } else if (imc < 40) {
    return "Obeso";
  } else {
    return "Obeso Mórbido";
  }
}