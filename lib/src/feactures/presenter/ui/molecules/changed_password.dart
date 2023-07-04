import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class ChangedPassword extends StatelessWidget {
  const ChangedPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ThemeService.of.backgroundColor,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 15),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CoffeeText(
            text: 'Alterar senha',
            typography: CoffeeTypography.title,
          ),
          const SizedBox(height: 10),
          const CoffeeText(
            text:
                'Tenha em mente que a nova senha não pode ser igual a anterior.',
          ),
          const SizedBox(height: 10),
          CoffeeContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoffeeText(
                  text: 'Senha atual',
                  color: ThemeService.of.primaryColor,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          const SizedBox(height: 10),
          CoffeeContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoffeeText(
                  text: 'Nova senha',
                  color: ThemeService.of.primaryColor,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CoffeeButtonText(text: 'Cancelar', onPressed: () {}),
              const Spacer(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: CoffeeButton(
                      label: 'Alterar',
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(vertical: 12)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
