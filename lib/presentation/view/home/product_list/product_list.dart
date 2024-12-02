import 'package:flutter/material.dart';
import 'package:mesho_clone/presentation/view/home/product_list/item_product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          ItemProduct(),
          ItemProduct(),
          ItemProduct(),
          ItemProduct(),
          ItemProduct(),
          ItemProduct(),
        ],
      ),
    );
  }
}
