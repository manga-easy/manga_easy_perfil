import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/molecules/card_description_name_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardNivelPerfilPage extends StatelessWidget {
  const CardNivelPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDescriptionNameWidget(
      height: 110,
      textDescriptionCard: 'Nível',
      iconDescriptionCard: Icons.star,
      widthDescriptionCard: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Column(
              children: const [
                CoffeeText(
                  text: 'NÍVEL',
                  typography: CoffeeTypography.title,
                ),
                CoffeeText(
                  text: '14',
                  typography: CoffeeTypography.title,
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  width: 250,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ThemeService.of.selectColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ThemeService.of.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                const CoffeeText(text: '885 XP'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
