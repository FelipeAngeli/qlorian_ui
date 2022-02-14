import 'package:flutter/material.dart';
import 'package:qlorian/app/model/coutry_model.dart';

class CountrySelector extends StatelessWidget {
  final Country country;
  const CountrySelector({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 4,
        ),
        Image.network(country.bandeira!),
        const SizedBox(
          width: 20,
        ),
        Text(country.pais!),
      ],
    );
  }
}
