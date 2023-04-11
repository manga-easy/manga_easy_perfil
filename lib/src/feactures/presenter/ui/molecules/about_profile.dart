import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/circle_profile.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              color: ThemeService.of.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.key, size: 35),
                    Icon(Icons.airline_seat_recline_normal, size: 35)
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CircleProfile(radius: 90),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 2,
                  color: ThemeService.of.primaryColor,
                ),
              ),
              child: CoffeeText(
                text: 'Membro',
                color: ThemeService.of.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            const CoffeeText(
              text: 'Tim maia',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CoffeeText(
                text:
                    'Ohayo Onichan!!!, Curto assistir animes e estou a procurar de um senpai para assistir animes e comentar sobre mangas comigo UwU e quem sabe coisa sapequinhas tambem ><',
              ),
            ),
            const SizedBox(height: 10),
            CoffeeText(
              text: 'Conta criada em 20 jun, 2023',
              color: ThemeService.of.primaryText.withOpacity(0.5),
            )
          ],
        ),
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
      ],
    );
  }
}
