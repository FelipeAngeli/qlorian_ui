import 'package:flutter/material.dart';
import 'package:qlorian/app/model/cpf_model.dart';

class ValidatorCpfController {
  final textCpfController = TextEditingController();
  final CpfModel meuCpf;
  ValidatorCpfController(this.meuCpf);

  String _cpf = '';

  setCpf(String value) {
    _cpf = value;
  }

  String valid = '';

  String validate() {
    bool isValid = meuCpf.isValid(textCpfController.text);

    if (isValid == true) {
      valid = '$_cpf válido';
    } else {
      valid = '$_cpf é inválido';
    }
    return valid;
  }
}
