import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/card_widget.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/circle_profile.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/statistic_information.dart';
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
                alignment: Alignment.topLeft,
                height: 125,
                color: ThemeService.of.primaryColor,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_outlined),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 75, left: 10),
                child: CircleProfile(radius: 90),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 225, right: 25),
                child: Column(
                  children: const [
                    CoffeeButton(label: 'Alterar imagem'),
                    CoffeeButtonText(
                      text: 'Remover imagem',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          CardWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeText(
                    text: 'Nome',
                    color: ThemeService.of.primaryColor,
                  ),
                  const SizedBox(height: 5),
                  const CoffeeText(text: 'Tim Maia'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          CardWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeText(
                    text: 'Email',
                    color: ThemeService.of.primaryColor,
                  ),
                  const SizedBox(height: 5),
                  const CoffeeText(text: 'timmaia@gmail.com'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          CardWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeText(
                    text: 'Bio',
                    color: ThemeService.of.primaryColor,
                  ),
                  const SizedBox(height: 5),
                  const CoffeeText(
                    text:
                        'Ohayo Onichan!!!, Curto assistir animes e estou a procurar de um senpai para assistir animes e comentar sobre mangas comigo UwU e quem sabe coisa sapequinhas tambem ><',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          CardWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  StatisticInformation(
                    visible: true,
                    statistic: 140,
                    name: 'Mangás lidos',
                  ),
                  StatisticInformation(
                    visible: false,
                    statistic: 140,
                    name: 'Horas lidas',
                  ),
                  StatisticInformation(
                    visible: true,
                    statistic: 140,
                    name: 'Emblemas',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: const [
                    CoffeeText(text: 'Manter oculto as estatísticas'),
                    Spacer(),
                    CoffeeSwitchButton(value: true)
                  ],
                ),
                Row(
                  children: const [
                    CoffeeText(text: 'Manter oculto os emblemas'),
                    Spacer(),
                    CoffeeSwitchButton(value: true)
                  ],
                ),
                Row(
                  children: const [
                    CoffeeText(text: 'Manter oculto os mangás favoritos'),
                    Spacer(),
                    CoffeeSwitchButton(value: true)
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
