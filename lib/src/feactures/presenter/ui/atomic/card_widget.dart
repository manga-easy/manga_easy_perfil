import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  const CardWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = 16 * 2;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - paddingHorizontal,
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
          width: MediaQuery.of(context).size.width - paddingHorizontal,
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
    );
  }
}
