import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';

import '../../utils/constants.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({this.padding, Key? key}) : super(key: key);

  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        children: [
          Text("200", style: Theme.of(context).textTheme.labelSmall?.copyWith(
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.grey,
            decorationThickness: 2,
          ),),
          4.0.spaceX,
          Text("20% off", style: Theme.of(context).textTheme.labelSmall,),
        ],
      ),
    );
  }
}
