import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/controller/profile_controller.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/circle_profile.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/changed_password.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class AboutProfile extends StatefulWidget {
  final ProfileController ct;
  const AboutProfile({super.key, required this.ct});

  @override
  State<AboutProfile> createState() => _AboutProfileState();
}

class _AboutProfileState extends State<AboutProfile> {
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
                  children: [
                    CoffeeIconButton(
                      icon: Icons.arrow_back_sharp,
                      color: ThemeService.of.backgroundText,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CoffeeIconButton(
                      icon: Icons.key,
                      color: ThemeService.of.backgroundText,
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const ChangedPassword(),
                      ),
                    ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CoffeeText(
                  text: 'timmaia@hotmail.com',
                  maskFilter: widget.ct.obscureEmail ? 3 : 0,
                ),
                CoffeeIconButton(
                  onTap: () {
                    setState(
                      () {
                        widget.ct.saveEmail();
                      },
                    );
                  },
                  icon: Icons.remove_red_eye,
                )
              ],
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
              color: ThemeService.of.backgroundText.withOpacity(0.5),
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
