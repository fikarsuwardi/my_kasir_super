import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/settings.dart';

import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavBloc()),
        BlocProvider(
          create: (context) => ProfileBloc()..add(GetProfileEvent()),
        ),
        BlocProvider(
          create: (context) => XenditBloc()..add(GetXenditEvent()),
        ),
        BlocProvider(
          create: (context) => StruckBloc()..add(GetStruckEvent()),
        ),
        BlocProvider(create: (context) => PrinterBloc()),
        BlocProvider(create: (context) => ProductBloc()),
        BlocProvider(create: (context) => FormProductBloc()),
      ],
      child: MaterialApp(
        title: 'Kasir SUPER',
        debugShowCheckedModeBanner: false,
        theme: LightTheme(AppColors.green).theme,
        home: const SplashPage(),
        onGenerateRoute: routes,
      ),
    );
  }
}
