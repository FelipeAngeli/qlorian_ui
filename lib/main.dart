import 'package:flutter/material.dart';
import 'package:qlorian/app/view/login_page.dart';

import 'package:qlorian/core/app_colors.dart';

import 'app/components/custom_dropdown_list.dart';
import 'app/view/create_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Appcolors.colorFontes),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
