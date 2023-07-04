import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/statistic_information.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/card_description_name_widget.dart';

class CardStatisticProfilePage extends StatelessWidget {
  const CardStatisticProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    return CardDescriptionNameWidget(
      height: sizeHeight * 0.13,
      textDescriptionCard: 'Estatísticas',
      iconDescriptionCard: Icons.watch_later_rounded,
      widthDescriptionCard: 125,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
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
    );
  }
}
