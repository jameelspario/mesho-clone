import 'package:flutter/material.dart';
import 'package:mesho_clone/presentation/widgets/my_image.dart';
import 'package:mesho_clone/utils/extensions.dart';

import '../../../../utils/constants.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({this.text='', Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: MyImage.assets("${Drawable.image}lemonade.png")),
          2.0.spaceY,
          Text("$text", style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontSize: 10
          ),
          maxLines: 1, overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
