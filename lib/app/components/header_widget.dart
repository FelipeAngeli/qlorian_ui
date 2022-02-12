import 'package:flutter/material.dart';
import 'package:qlorian/core/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  final String icone;
  final String titulo;
  final String subTitulo;
  final String preLoginTxt;
  final String loginTxt;
  const HeaderWidget({
    Key? key,
    this.icone = "",
    this.titulo = "",
    this.subTitulo = "",
    this.preLoginTxt = "",
    this.loginTxt = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              icone,
              width: 25,
              height: 25,
            ),
            Text(
              titulo,
              style: const TextStyle(
                  color: Appcolors.colorFontes,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
        Text(
          subTitulo,
          style: const TextStyle(
              color: Appcolors.colorFontes,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              preLoginTxt,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              loginTxt,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


//  Text("If you have an account / LOGIN"),










  // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // children: [
      //   Column(
      //     children: [
      //       Row(
      //         children: [
      //           Image.asset(
      //             "assets/image/hand.png",
      //             width: 25,
      //             height: 25,
      //           ),
      //           Text("Hello,"),
      //         ],
      //       ),
      //       Text("Are you new here?"),
      //     ],
      //   ),
      // ],