import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/card_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardDescriptionNameWidget extends StatelessWidget {
  final double height;
  final Alignment? align;
  final Widget child;
  final String textDescriptionCard;
  final IconData iconDescriptionCard;
  final double widthDescriptionCard;
  final BorderRadius? borderRadiusDescriptionCard;
  const CardDescriptionNameWidget(
      {super.key,
      required this.height,
      this.align,
      required this.child,
      required this.textDescriptionCard,
      required this.iconDescriptionCard,
      required this.widthDescriptionCard,
      this.borderRadiusDescriptionCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: height + 15,
        child: Stack(
          alignment: align ?? Alignment.topRight,
          children: [
            Positioned(
              top: 15,
              child: CardWidget(
                height: height,
                child: child,
              ),
            ),
            Container(
              height: 32,
              width: widthDescriptionCard,
              decoration: BoxDecoration(
                color: ThemeService.of.primaryColor,
                borderRadius: borderRadiusDescriptionCard ??
                    const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CoffeeText(
                    text: textDescriptionCard,
                  ),
                  const SizedBox(width: 5),
                  Icon(iconDescriptionCard, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
