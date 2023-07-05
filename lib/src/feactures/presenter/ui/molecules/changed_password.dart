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
          const CoffeeField(
            title: 'Senha atual',
            hintText: 'Digite sua senha...',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          const CoffeeField(
            title: 'Nova senha',
            hintText: 'Digite uma nova senha...',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CoffeeButtonText(
                text: 'Cancelar',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              Expanded(
                child: CoffeeButton(
                  margin: const EdgeInsets.only(left: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  label: 'Alterar',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
