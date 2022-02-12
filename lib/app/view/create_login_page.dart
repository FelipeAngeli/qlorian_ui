import 'package:flutter/material.dart';
import 'package:qlorian/app/components/button_custom.dart';
import 'package:qlorian/app/components/custom_field.dart';
import 'package:qlorian/app/components/header_widget.dart';

import 'login_page.dart';

class CreateLoginPage extends StatelessWidget {
  CreateLoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

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
              // CUIDAR CONST

              const HeaderWidget(
                icone: "assets/icons/hand.png",
                titulo: " Hello,",
                subTitulo: "Are you new here?",
                preLoginTxt: "If have an account/",
                loginTxt: " Login",
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomField(
                      custemName: "Full Name",
                      custemIcon: "assets/icons/person.png",
                      customLabel: "Full Name",
                      validator: (value) {
                        if (value!.length < 5) {
                          return "Esse nome é invalido";
                        }
                      },
                    ),
                    CustomField(
                      custemName: "E-mail",
                      custemIcon: "assets/icons/email.png",
                      customLabel: "email@com.br",
                      validator: (value) {
                        if (!value!.contains("@")) {
                          return "Esse e-mail está incorreto";
                        }
                      },
                    ),
                    CustomField(
                      custemName: "Password",
                      custemIcon: "assets/icons/password.png",
                      customLabel: "Password",
                      suffixIcon: IconButton(
                          //https://www.kindacode.com/article/flutter-show-hide-password-in-textfield-textformfield/
                          onPressed: () {},
                          icon: Image.asset("assets/icons/visibility.png")),
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                      },
                    ),
                    CustomField(
                      custemName: "Confirm Password",
                      custemIcon: "assets/icons/password.png",
                      customLabel: "Confirm Password",
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/visibility.png")),
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
