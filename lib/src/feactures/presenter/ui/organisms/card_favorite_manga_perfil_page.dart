import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/molecules/card_description_name_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardFavoriteMangaPerfilPage extends StatelessWidget {
  const CardFavoriteMangaPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDescriptionNameWidget(
      height: 225,
      align: Alignment.topLeft,
      textDescriptionCard: 'Mangás favoritos',
      iconDescriptionCard: Icons.favorite,
      widthDescriptionCard: 150,
      borderRadiusDescriptionCard: const BorderRadius.only(
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: ThemeService.of.selectColor,
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
      ),
    );
  }
}
