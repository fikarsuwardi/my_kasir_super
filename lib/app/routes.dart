import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/pos/pos.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/settings/settings.dart';
import 'package:kasirsuper/features/transaction/pages/pages.dart';

Route<dynamic> routes(RouteSettings settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(builder: (_) {
        return const MainPage();
      });
    case ProductInputPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return ProductInputPage(
          product: settings.arguments as ProductModel?,
        );
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
    case PrinterPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const PrinterPage();
      });
    case POSOrderPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const POSOrderPage();
      });
    case PaymentPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const PaymentPage();
      });
    case CashPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const CashPage();
      });
    case SuccessTransactionPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return SuccessTransactionPage(
          referenceId: settings.arguments as String,
        );
      });
    default:
      return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Page Not Found!')),
        );
      });
  }
}
