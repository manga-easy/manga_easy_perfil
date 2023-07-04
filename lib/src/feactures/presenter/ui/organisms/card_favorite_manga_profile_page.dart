import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/card_description_name_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardFavoriteMangaProfilePage extends StatelessWidget {
  const CardFavoriteMangaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    return CardDescriptionNameWidget(
      height: sizeHeight * 0.24 ,
      align: Alignment.topLeft,
      textDescriptionCard: 'Mangás favoritos',
      iconDescriptionCard: Icons.favorite,
      widthDescriptionCard: 150,
      borderRadiusDescriptionCard: const BorderRadius.only(
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                color: ThemeService.of.selectColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 150,
              width: 100,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: ThemeService.of.selectColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 150,
              width: 100,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: ThemeService.of.selectColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
