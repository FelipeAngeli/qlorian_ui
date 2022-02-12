import 'package:flutter/material.dart';
import 'package:qlorian/core/app_colors.dart';

class CustomField extends StatelessWidget {
  final String custemName;
  final String? custemIcon;
  final String? customLabel;

  final Widget? suffixIcon;

  final bool obscuretext;
  final TextEditingController? controller;
  final String? Function(String? value) validator;
  const CustomField({
    Key? key,
    required this.custemName,
    this.obscuretext = false,
    this.controller,
    this.custemIcon,
    this.customLabel,
    this.suffixIcon,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          custemName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Appcolors.colorFontes,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: validator,
          key: key,
          obscureText: obscuretext,
          decoration: InputDecoration(
            prefixIcon: Container(
              width: 10,
              padding: const EdgeInsets.only(left: 5, right: 10),
              child: Image.asset(
                custemIcon!,
              ),
            ),
            labelText: customLabel,
            labelStyle: const TextStyle(color: Appcolors.colorFontes),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Appcolors.colorPrimary,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Appcolors.colorPrimary,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}