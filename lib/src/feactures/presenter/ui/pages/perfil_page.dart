import 'package:flutter/material.dart';
import 'package:manga_easy_perfil/src/feactures/presenter/ui/atomic/circular_profile.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class PerfilPage extends StatelessWidget {
  static const route = '/perfil';
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                  child: CircularProfile(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
