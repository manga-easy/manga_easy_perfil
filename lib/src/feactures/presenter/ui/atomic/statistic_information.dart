import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class StatisticInformation extends StatelessWidget {
  final int statistic;
  final String name;
  final bool visible;
  const StatisticInformation(
      {super.key, required this.statistic, required this.name, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoffeeText(
          text: visible ? '$statistic' : '****',
          typography: CoffeeTypography.title,
        ),
        CoffeeText(text: name),
      ],
    );
  }
}
