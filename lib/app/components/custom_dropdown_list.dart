import 'package:flutter/material.dart';
import 'package:qlorian/app/controller/homer_controller.dart';
import 'package:qlorian/app/model/coutry_model.dart';

import 'package:qlorian/core/app_colors.dart';

import 'country_selector.dart';

class CustomDropdomnList extends StatefulWidget {
  const CustomDropdomnList({Key? key}) : super(key: key);

  @override
  _CustomDropdomnListState createState() => _CustomDropdomnListState();
}

class _CustomDropdomnListState extends State<CustomDropdomnList> {
  final controller = HomerController();

  @override
  void initState() {
    setState(() {
      controller.setInitial(controller.countryList[0]);
    });
    super.initState();
  }

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
                value: controller.initial,
                items: controller.countryList.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: CountrySelector(country: country),
                  );
                }).toList(),
                onChanged: (Country? value) {
                  setState(() {
                    controller.setInitial(value!);
                  });
                },
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
