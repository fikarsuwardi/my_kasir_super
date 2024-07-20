import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/filter_section.dart';
part 'sections/item_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.dp16),
            child: _FilterSection(),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const _ItemSection();
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
