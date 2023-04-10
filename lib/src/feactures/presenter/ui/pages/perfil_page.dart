import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/molecules/card_widget.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/circular_profile.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/molecules/about_perfil.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class PerfilPage extends StatelessWidget {
  static const route = '/perfil';
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AboutPerfil(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: ThemeService.of.selectColor,
                radius: 50,
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: ThemeService.of.selectColor,
                radius: 50,
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: ThemeService.of.selectColor,
                radius: 50,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CoffeeButton(
              label: 'Editar perfil',
              padding: const EdgeInsets.symmetric(vertical: 14),
              onPress: () {},
            ),
          ),
          const SizedBox(height: 20),
          CardWidget(
            height: 100,
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
        ],
      ),
    );
  }
}
