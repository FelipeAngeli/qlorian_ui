class CpfModel {
  bool isValid(String cpf) {
    if (cpf.length != 11) {
      return false;
    }
    return validate(cpf, 9) && validate(cpf, 10);
  }

  bool validate(String cpf, int length) {
    int sum = 0;
    for (var digit = 0; digit < length; digit++) {
      int cpfDigit = int.parse(cpf[digit]);
      sum += cpfDigit * (length + 1 - digit);
    }
    int result = ((sum * 10) % 11) == 10 ? 0 : ((sum * 10) % 11);
    return result == int.parse(cpf[length]);
  }
}
