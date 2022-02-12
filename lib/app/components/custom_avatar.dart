import 'package:flutter/material.dart';
import 'package:qlorian/core/app_colors.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        width: 150.0,
        height: 150.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/avatar.jpg"),
          ),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        child: SizedBox(
          width: 50,
          child: FloatingActionButton(
            child: Image.asset("assets/icons/cam.png"),
            backgroundColor: Appcolors.colorPrimary,
            onPressed: () {},
          ),
        ));
  }
}














// Ink(
//         decoration: ShapeDecoration(
//           shape: CircleBorder(),
//           color: Appcolors.colorPrimary,
//         ),
//         child: IconButton(
//           icon: Image.asset("assets/icons/cam.png"),
//           onPressed: () {},
//         ),
//       ),