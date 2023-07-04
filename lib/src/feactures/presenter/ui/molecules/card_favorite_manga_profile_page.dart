import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardFavoriteMangaProfilePage extends StatelessWidget {
  const CardFavoriteMangaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CoffeeContainer(
        alignDescription: Alignment.topLeft,
        textDescriptionCard: 'Mangás favoritos',
        iconDescriptionCard: Icons.favorite,
        borderRadiusDescriptionCard: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
