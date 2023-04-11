import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/circle_profile.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class EditPage extends StatelessWidget {
  static const route = '/edit-perfil';
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 125,
                color: ThemeService.of.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                    CircleProfile(radius: 80),
                    Column(
                      children: [
                        CoffeeButton(label: 'Alterar imagem'),
                        CoffeeButtonText(
                          text: 'Remover imagem',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
