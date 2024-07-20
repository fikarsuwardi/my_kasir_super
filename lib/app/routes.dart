import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/settings/settings.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(builder: (_) {
        return const MainPage();
      });
    case ProductInputPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const ProductInputPage();
      });
    case ProfilePage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const ProfilePage();
      });
    case XenditPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const XenditPage();
      });
    case StruckPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const StruckPage();
      });
    case ShowStruckPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const ShowStruckPage();
      });
    default:
      return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Page Not Found!')),
        );
      });
  }
}
