import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CircleProfile extends StatelessWidget {
  final double radius;
  const CircleProfile({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ThemeService.of.backgroundColor,
      radius: radius + 10,
      child:  CircleAvatar(
        radius: radius,
        backgroundImage: const NetworkImage(
            'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650'),
      ),
    );
  }
}
