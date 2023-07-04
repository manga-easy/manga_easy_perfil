import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/statistic_information.dart';

class CardStatisticProfilePage extends StatelessWidget {
  const CardStatisticProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CoffeeContainer(
        alignDescription: Alignment.topLeft,
        borderRadiusDescriptionCard: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        textDescriptionCard: 'Estatísticas',
        iconDescriptionCard: Icons.watch_later_rounded,
        child: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatisticInformation(
                visible: true,
                statistic: 140,
                name: 'Mangás lidos',
              ),
              StatisticInformation(
                visible: false,
                statistic: 140,
                name: 'Horas lidas',
              ),
              StatisticInformation(
                visible: true,
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
