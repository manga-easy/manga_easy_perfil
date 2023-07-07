import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_profile/src/feactures/presenter/controller/profile_controller.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/circle_profile.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/atomic/statistic_information.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class EditPage extends StatefulWidget {
  static const route = '/edit-perfil';
  final ProfileController ct;
  const EditPage({super.key, required this.ct});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                height: 125,
                color: ThemeService.of.primaryColor,
                child: CoffeeIconButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  icon: Icons.arrow_back_outlined,
                  color: ThemeService.of.backgroundText,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 75, left: 10),
                child: CircleProfile(radius: 90),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 225, right: 25),
                child: Column(
                  children: [
                    CoffeeButton(
                      label: 'Alterar imagem',
                      onPressed: () async {
                        // File? image = await ct.selectImageFromGallery();
                        // if (image != null) {
                        //   await sendImageToAPI(image);
                        // }
                      },
                    ),
                    const CoffeeButtonText(
                      text: 'Remover imagem',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                CoffeeContainer(
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
                const SizedBox(height: 10),
                CoffeeContainer(
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
                const SizedBox(height: 10),
                CoffeeContainer(
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
                const SizedBox(height: 10),
                CoffeeContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StatisticInformation(
                        visible: widget.ct.obscureStatistic,
                        statistic: 140,
                        name: 'Mangás lidos',
                      ),
                      StatisticInformation(
                        visible: widget.ct.obscureStatistic,
                        statistic: 140,
                        name: 'Horas lidas',
                      ),
                      StatisticInformation(
                        visible: widget.ct.obscureStatistic,
                        statistic: 140,
                        name: 'Emblemas',
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const CoffeeText(text: 'Manter oculto as estatísticas'),
                        const Spacer(),
                        CoffeeSwitchButton(
                          value: widget.ct.obscureStatistic,
                          onChanged: (value) {
                            setState(() {
                              widget.ct.saveStatistic(value);
                            });
                          },
                        )
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     CoffeeText(text: 'Manter oculto os emblemas'),
                    //     Spacer(),
                    //     CoffeeSwitchButton(value: true)
                    //   ],
                    // ),
                    // Row(
                    //   children: [
                    //     CoffeeText(text: 'Manter oculto os mangás favoritos'),
                    //     Spacer(),
                    //     CoffeeSwitchButton(value: true)
                    //   ],
                    // ),
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
