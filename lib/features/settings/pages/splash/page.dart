import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.logo,
              width: Dimens.width(context) / 2,
            ),
            Dimens.dp16.height,
            const HeadingText('Kasir SUPER'),
          ],
        ),
      ),
    );
  }
}
