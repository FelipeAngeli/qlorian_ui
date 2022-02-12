import 'package:flutter/material.dart';

import 'package:qlorian/core/app_colors.dart';

class ButtonCustom extends StatelessWidget {
  final Function()? onPressed;
  const ButtonCustom({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          primary: Appcolors.colorPrimary,
        ),
      ),
    );
  }
}


//  RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),