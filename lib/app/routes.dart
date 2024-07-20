import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/product/product.dart';

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
    default:
      return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Page Not Found!')),
        );
      });
  }
}
