import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/pos/pos.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/transaction/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/home';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const [
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.storefront),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.receipt),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.pos),
            label: 'POS',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.product),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.settings),
            label: 'Lainnya',
          ),
        ],
      ),
    );
  }
}
