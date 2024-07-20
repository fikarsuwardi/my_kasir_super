import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/pos/pos.dart';

part 'sections/price_section.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  static const routeName = '/pos/payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metode Pembayaran')),
      body: ListView(
        children: [
          const _PriceSection(),
          const Divider(thickness: Dimens.dp8),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.semiBold('Pilih Metode Pembayaran'),
                Dimens.dp16.height,
                _buildTile(
                  title: 'Tunai',
                  icon: AppIcons.money,
                  onTap: () {
                    Navigator.pushNamed(context, CashPage.routeName);
                  },
                ),
                _buildTile(
                  title: 'QRIS',
                  icon: AppIcons.qrCode,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile({
    required String title,
    required IconData icon,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.dp12),
        child: Row(
          children: [
            Icon(icon),
            Dimens.dp16.width,
            Expanded(
              child: RegularText.semiBold(
                title,
                style: const TextStyle(fontSize: Dimens.dp12),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: Dimens.dp18,
            ),
          ],
        ),
      ),
    );
  }
}
