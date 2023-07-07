import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/statistic_information.dart';

class CustomCardStatistic extends StatelessWidget {
  final bool visible;
  const CustomCardStatistic({super.key, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CoffeeContainer(
        alignDescription: Alignment.topLeft,
        borderRadiusDescriptionCard: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        textDescriptionCard: 'Estatísticas',
        iconDescriptionCard: Icons.watch_later_rounded,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatisticInformation(
                visible: visible,
                statistic: 140,
                name: 'Mangás lidos',
              ),
              StatisticInformation(
                visible: visible,
                statistic: 140,
                name: 'Horas lidas',
              ),
              StatisticInformation(
                visible: visible,
                statistic: 140,
                name: 'Emblemas',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
