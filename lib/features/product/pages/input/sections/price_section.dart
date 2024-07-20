part of '../page.dart';

class _PriceSection extends StatelessWidget {
  const _PriceSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RegularText.semiBold('Harga'),
          Dimens.dp24.height,
          Row(
            children: [
              const Expanded(
                child: RegularTextInput(
                  label: 'Harga Regular',
                  required: true,
                  hintText: 'Rp 0',
                ),
              ),
              Dimens.dp16.width,
              const Expanded(
                child: RegularTextInput(
                  label: 'Unit',
                  required: true,
                  hintText: 'Pcs, kg, etc.',
                ),
              ),
            ],
          ),
          Dimens.dp24.height,
          const RegularTextInput(
            label: 'Biaya Per Item',
            required: true,
            hintText: 'Rp 0',
          ),
          Dimens.dp24.height,
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.medium(
                      'Margin',
                      style: const TextStyle(fontSize: Dimens.dp12),
                    ),
                    Dimens.dp8.height,
                    const RegularText(
                      '-',
                      style: TextStyle(fontSize: Dimens.dp12),
                    ),
                  ],
                ),
              ),
              Dimens.dp16.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.medium(
                      'Profit',
                      style: const TextStyle(fontSize: Dimens.dp12),
                    ),
                    Dimens.dp8.height,
                    const RegularText(
                      '-',
                      style: TextStyle(fontSize: Dimens.dp12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
