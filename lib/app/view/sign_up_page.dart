//https://www.kindacode.com/article/flutter-show-hide-password-in-textfield-textformfield/
import 'package:flutter/material.dart';
import 'package:qlorian/app/components/button_custom.dart';
import 'package:qlorian/app/components/custom_field.dart';
import 'package:qlorian/app/components/header_widget.dart';
import 'package:qlorian/app/controller/text_editing_controller.dart';

import 'confirm_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = false;
  bool _isObscureConrim = false;
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
                      controller: controller.fullNameController,
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
                      controller: controller.emailController,
                      teclado: TextInputType.emailAddress,
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
                      controller: controller.passwordController,
                      obscuretext: _isObscure,
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
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
                      controller: controller.confirmPasswordController,
                      obscuretext: _isObscureConrim,
                      suffixIcon: IconButton(
                        icon: Icon(_isObscureConrim
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscureConrim = !_isObscureConrim;
                          });
                        },
                      ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmPage(
                                fullName: controller.fullName,
                              )));
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
