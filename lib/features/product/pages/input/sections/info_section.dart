part of '../page.dart';

class _InfoSection extends StatelessWidget {
  const _InfoSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RegularText.semiBold('Produk Info'),
          Dimens.dp24.height,
          const RegularTextInput(
            label: 'Judul Produk',
            required: true,
            hintText: 'Masukkan Judul Produk',
          ),
          Dimens.dp24.height,
          const RegularTextInput(
            label: 'Deskripsi',
            required: true,
            hintText: 'Masukkan Deskripsi Produk',
          ),
          Dimens.dp24.height,
          const LabelInput(label: 'Media', required: true),
          Dimens.dp8.height,
          const RegularText(
            'Maks. ukuran 3 MB',
            style: TextStyle(fontSize: Dimens.dp12),
          ),
          Dimens.dp8.height,
          Container(
            padding: const EdgeInsets.all(Dimens.dp16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.dp8),
              border: Border.all(color: context.theme.dividerColor),
            ),
            child: Icon(
              AppIcons.addPhotoAlternate,
              color: context.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
