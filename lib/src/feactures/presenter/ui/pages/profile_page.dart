import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_profile/src/feactures/presenter/controller/profile_controller.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/about_profile.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/card_nivel_profile_page.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/molecules/custom_card_statistic.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/pages/edit_page.dart';

class ProfilePage extends StatefulWidget {
  static const route = '/profile';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileController ct = GetIt.I();

  @override
  void initState() {
    ct.init();
    ct.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AboutProfile(ct: ct),
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
                    builder: (context) => EditPage(ct: ct),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const CardNivelProfilePage(),
          const SizedBox(height: 10),
          // const CardFavoriteMangaProfilePage(),
          // const SizedBox(height: 10),
          CustomCardStatistic(
            visible: ct.obscureStatistic,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
