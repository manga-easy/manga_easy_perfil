import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final Alignment? align;
  final Widget? descriptionCard;
  const CardWidget(
      {super.key, required this.child, required this.height, this.align, this.descriptionCard});

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
              top: 14,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height,
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1.5,
                        color: ThemeService.of.selectColor,
                      ),
                    ),
                    child: child,
                  ),
                  Container(
                    height: 1.5,
                    width: MediaQuery.of(context).size.width - 32,
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: ThemeService.of.selectColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 32,
              width: 100,
              decoration: BoxDecoration(
                color: ThemeService.of.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CoffeeText(
                    text: 'Nível',
                  ),
                  Icon(Icons.star, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
