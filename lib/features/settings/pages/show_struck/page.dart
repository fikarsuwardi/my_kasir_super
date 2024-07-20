import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/heading_section.dart';

class ShowStruckPage extends StatelessWidget {
  const ShowStruckPage({super.key});

  static const routeName = '/settings/struck/show';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tampilan Struk')),
      body: ListView(
        children: const [
          _HeadingSection(),
          Divider(thickness: 8),
        ],
      ),
    );
  }
}
