part of '../page.dart';

class _FilterSection extends StatefulWidget {
  const _FilterSection();

  @override
  State<_FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<_FilterSection> {
  String selected = 'Done';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildContainer(context, label: 'Done'),
        Dimens.dp12.width,
        buildContainer(context, label: 'Draft'),
      ],
    );
  }

  Widget buildContainer(
    BuildContext context, {
    required String label,
  }) {
    final isActive = selected == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp16,
          vertical: Dimens.dp8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          color: isActive ? context.theme.primaryColor : null,
          border: Border.all(
            color:
                isActive ? context.theme.primaryColor : AppColors.black[200]!,
          ),
        ),
        child: RegularText.semiBold(
          label,
          style: TextStyle(
            fontSize: Dimens.dp12,
            color: isActive
                ? context.theme.scaffoldBackgroundColor
                : AppColors.black[200],
          ),
        ),
      ),
    );
  }
}
