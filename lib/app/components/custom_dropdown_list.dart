import 'package:flutter/material.dart';

import 'package:qlorian/core/app_colors.dart';

class CustomDropdomnList extends StatefulWidget {
  const CustomDropdomnList({Key? key}) : super(key: key);

  @override
  _CustomDropdomnListState createState() => _CustomDropdomnListState();
}

class _CustomDropdomnListState extends State<CustomDropdomnList> {
  final List<String> genders = ['Brasil', 'Argentina'];
  String? selectedGender; //CUIDAR

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Country",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Appcolors.colorFontes,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DecoratedBox(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Appcolors.colorPrimary),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text(genders[0]),
                    value: genders[0],
                  ),
                  DropdownMenuItem(
                    child: Text(genders[1]),
                    value: genders[1],
                  ),
                ],
                onChanged: (value) => setState(() {
                  selectedGender = value as String?;
                }),
                value: selectedGender,
                hint: const Text(
                  'Selecione seu Pais',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.colorFontes,
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
                isExpanded: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
