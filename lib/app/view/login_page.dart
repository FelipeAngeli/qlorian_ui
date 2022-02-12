import 'package:flutter/material.dart';
import 'package:qlorian/app/components/button_custom.dart';
import 'package:qlorian/app/components/custom_avatar.dart';
import 'package:qlorian/app/components/custom_dropdown_list.dart';
import 'package:qlorian/app/components/custom_field.dart';
import 'package:qlorian/app/components/header_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actionsIconTheme: IconThemeData(color: Appcolors.colorFontes),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // CUIDAR CONST

              const HeaderWidget(
                icone: "assets/icons/sunglasses.png",
                titulo: " Setting up your,",
                subTitulo: "profile",
                preLoginTxt: "Add your profile photo",
              ),
              CustomAvatar(),
              Form(
                child: Column(
                  children: [
                    CustomField(
                      custemName: "Display Name",
                      custemIcon: "assets/icons/person.png",
                      customLabel: "Full Name",
                      validator: (value) {
                        if (value!.length < 5) {
                          return "Esse nome é invalido";
                        }
                      },
                    ),
                    // CustomField(
                    //   custemName: "Country",
                    //   custemIcon: "assets/icons/bandeira.png",
                    //   customLabel: "Indonesia",
                    //   validator: (value) {
                    //     if (value!.length < 5) {
                    //       return "Esse nome é invalido";
                    //     }
                    //   },
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomDropdomnList(),
                    CustomField(
                      custemName: "Cpf",
                      custemIcon: "assets/icons/cpf.png",
                      customLabel: "xxx.xxx.xxx-xx",
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                      },
                    ),
                    CustomField(
                      custemName: "RG",
                      custemIcon: "assets/icons/rg.png",
                      customLabel: "123456789",
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                      },
                    ),
                    CustomField(
                      custemName: "Telefone",
                      custemIcon: "assets/icons/cel.png",
                      customLabel: "11 12345.6789",
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                      },
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
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  _doLogin();
                }
              }),
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
