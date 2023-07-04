import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/about_profile.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/organisms/card_favorite_manga_profile_page.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/organisms/card_nivel_profile_page.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/organisms/card_statistic_profile_page.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/pages/edit_page.dart';

class ProfilePage extends StatelessWidget {
  static const route = '/profile';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AboutProfile(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CoffeeButton(
              label: 'Editar perfil',
              padding: const EdgeInsets.symmetric(vertical: 14),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditPage(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const CardNivelProfilePage(),
          const SizedBox(height: 20),
          const CardFavoriteMangaProfilePage(),
          const SizedBox(height: 10),
          const CardStatisticProfilePage(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
