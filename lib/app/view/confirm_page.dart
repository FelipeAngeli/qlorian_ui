import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qlorian/app/components/button_custom.dart';
import 'package:qlorian/app/components/custom_avatar.dart';
import 'package:qlorian/app/components/custom_dropdown_list.dart';
import 'package:qlorian/app/components/custom_field.dart';
import 'package:qlorian/app/components/header_widget.dart';
import 'package:qlorian/app/controller/text_editing_controller.dart';
import 'package:qlorian/app/controller/validator_cpf_controller.dart';
import 'package:qlorian/app/model/cpf_model.dart';
import 'package:qlorian/app/view/sign_up_page.dart';

class ConfirmPage extends StatelessWidget {
  final String fullName;
  ConfirmPage({Key? key, required this.fullName}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final cpfController = ValidatorCpfController(CpfModel());
  final controller = TextControllers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeaderWidget(
                icone: "assets/icons/sunglasses.png",
                titulo: " Setting up your,",
                subTitulo: "profile",
                preLoginTxt: "Add your profile photo",
              ),
              const CustomAvatar(),
              Form(
                child: Column(
                  children: [
                    CustomField(
                      initialValue: fullName,
                      custemName: "Display Name",
                      custemIcon: "assets/icons/person.png",
                      customLabel: "Full Name",
                      // controller: controller.fullNameController,
                      validator: (value) {
                        if (value!.length < 5) {
                          return "Esse nome é invalido";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomDropdomnList(),
                    CustomField(
                        custemName: "CPF",
                        custemIcon: "assets/icons/cpf.png",
                        customLabel: "CPF",
                        controller: cpfController.textCpfController,
                        teclado: TextInputType.number,
                        validator: (value) {
                          if (!RegExp(r"/^\d{3}\.\d{3}\.\d{3}\-\d{2}$/")
                              .hasMatch(value ?? '')) {
                            return null;
                          }
                        },
                        mask: [
                          CpfMask(),
                        ]),
                    CustomField(
                      custemName: "RG",
                      custemIcon: "assets/icons/rg.png",
                      customLabel: "RG",
                      controller: controller.rgController,
                      teclado: TextInputType.number,
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                      },
                      mask: [RGMask()],
                    ),
                    CustomField(
                      custemName: "Phone",
                      custemIcon: "assets/icons/cel.png",
                      customLabel: "Phone",
                      controller: controller.phoneController,
                      teclado: TextInputType.number,
                      validator: (value) {
                        if (value!.length < 10) {
                          return "O celular deve conter 10 digitos";
                        }
                      },
                      mask: [PhoneMask()],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonCustom(onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                  _doLogin();
                }
              }),
              const SizedBox(
                height: 30,
              ),
              Visibility(
                visible: cpfController.valid.isNotEmpty,
                child: Text(
                  cpfController.valid,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      print("valido");
    } else {
      print("invalido");
    }
  }
}

class CpfMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var cpf = newValue.text;

    if (cpf.length > 14 || !RegExp(r'^([\d-.]+)?$').hasMatch(cpf)) {
      return oldValue;
    }
    cpf = cpf.replaceAll(RegExp(r'\D'), '');
    final characters = cpf.characters.toList();
    var formatted = '';

    for (var i = 0; i < characters.length; i++) {
      if ([3, 6, 9].contains(i)) {
        formatted += i == 9 ? "-" : "."; //ternario

      }
      formatted += characters[i];
    }
    return newValue.copyWith(
      text: formatted,
      selection:
          TextSelection.fromPosition(TextPosition(offset: formatted.length)),
    );
  }
}

class RGMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var rg = newValue.text;

    if (rg.length > 10 || !RegExp(r'^([\d-.]+)?$').hasMatch(rg)) {
      return oldValue;
    }

    return newValue;
  }
}

class PhoneMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var phone = newValue.text;

    if (phone.length > 14 || !RegExp(r'^([\d-()]+)?$').hasMatch(phone)) {
      return oldValue;
    }
    phone = phone.replaceAll(RegExp(r'\D'), '');
    final characteres = phone.characters.toList();
    var formatted = '';

    for (var i = 0; i < characteres.length; i++) {
      if (i == 0) {
        formatted += '(';
        formatted += characteres[i];
      } else if (i == 2) {
        formatted += ')';
        formatted += characteres[i];
      } else if (i == 7) {
        formatted += '-';
        formatted += characteres[i];
      } else {
        formatted += characteres[i];
      }
    }
    return newValue.copyWith(
      text: formatted,
      selection:
          TextSelection.fromPosition(TextPosition(offset: formatted.length)),
    );
  }
}






// if (i == 3) {
//         formatted += '.';
//         formatted += characters[i];
//       } else if (i == 6) {
//         formatted += '.';
//         formatted += characters[i];
//       } else if (i == 9) {
//         formatted += '-';
//         formatted += characters[i];
//       } else {
//         formatted += characters[i];
//       }




