import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/product/product.dart';

part 'sections/item_section.dart';
part 'sections/floating_section.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dimens.dp16.height,
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.dp16,
            ),
            child: SearchTextInput(
              hintText: 'Search by product name or SKU',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(Dimens.dp16),
            child: SubtitleText('3 Produk'),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(Dimens.dp16),
              itemBuilder: (context, index) {
                return const _ItemSection();
              },
              separatorBuilder: (context, index) => Dimens.dp16.height,
              itemCount: 5,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const _FloationgSection(),
    );
  }
}
