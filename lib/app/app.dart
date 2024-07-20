import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/settings/settings.dart';

import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir SUPER',
      debugShowCheckedModeBanner: false,
      theme: LightTheme(AppColors.green).theme,
      home: const SplashPage(),
      onGenerateRoute: routes,
    );
  }
}
