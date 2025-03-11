import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/routes/bindings.dart';
import 'package:tanipedia_mobile/core/routes/routes.dart';
import 'package:tanipedia_mobile/core/themes/theme.dart';
import 'package:tanipedia_mobile/feature/main/main_route.dart';

class Tanipedia extends StatelessWidget {
  const Tanipedia({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      theme: ThemeMain().getDefaultTheme(context),
      initialRoute: MainRoute.splashScreen,
      getPages: BaseRoute.route,
      initialBinding: MainBinding(),
    );
  }
}
