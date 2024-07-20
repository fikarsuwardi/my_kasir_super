part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.dp8),
              child: Image.network(
                'https://indonesiakaya.com/wp-content/uploads/2020/10/langsat1200.jpg',
                width: 74,
                height: 74,
                fit: BoxFit.cover,
              ),
            ),
            Dimens.dp12.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegularText.semiBold('Organic Potato Original'),
                  Dimens.dp4.height,
                  RichText(
                    text: TextSpan(
                      text: 'Rp 18.900',
                      style: context.theme.textTheme.titleMedium,
                      children: const [
                        TextSpan(
                          text: ' / kg',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Dimens.dp16.height,
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Edit'),
              ),
            ),
            Dimens.dp16.width,
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Delete'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
