import 'package:flutter/material.dart';

class TextControllers {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController cpfController = TextEditingController();
  TextEditingController rgController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String get fullName => fullNameController.value.text;
}
