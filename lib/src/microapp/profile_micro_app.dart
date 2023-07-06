import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_profile/src/feactures/presenter/controller/profile_controller.dart';
import 'package:manga_easy_profile/src/feactures/presenter/ui/pages/profile_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class ProfileMicroApp extends MicroApp {
  GetIt getIt = GetIt.instance;

  @override
  Map<String, Widget> routers = {
    ProfilePage.route: const ProfilePage(),
  };

  @override
  void registerDependencies() {
    //Controller
    getIt.registerFactory<ProfileController>(
      () => ProfileController(
        getIt(),
      ),
    );
  }
}
