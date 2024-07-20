part of '../page.dart';

class _StockSection extends StatelessWidget {
  const _StockSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegularTextInput(
            label: 'SKU (Stock Keeping Unit)',
            hintText: 'SKU (Stock Keeping Unit)',
          ),
          Dimens.dp24.height,
          const RegularTextInput(
            label: 'Total Stock',
            hintText: '0',
          ),
          Dimens.dp24.height,
        ],
      ),
    );
  }
}
