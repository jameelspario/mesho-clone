import 'package:flutter/material.dart';

import 'item_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({this.items = const [], Key? key}) : super(key: key);
  final List items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.25,
          maxWidth: (items.length / 2 * 88),
        ),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final it in items) ItemCategory(text: it),
          ],
        ),
      ),
    );
  }
}
