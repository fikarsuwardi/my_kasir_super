import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/info_section.dart';
part 'sections/price_section.dart';
part 'sections/stock_section.dart';

class ProductInputPage extends StatelessWidget {
  const ProductInputPage({super.key});

  static const String routeName = '/product/input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Produk')),
      body: ListView(
        children: const [
          _InfoSection(),
          Divider(),
          _PriceSection(),
          Divider(thickness: Dimens.dp8),
          _StockSection(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.dp16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Simpan'),
          ),
        ),
      ),
    );
  }
}
