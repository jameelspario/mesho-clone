import 'package:flutter/material.dart';
import 'package:mesho_clone/presentation/widgets/my_image.dart';
import 'package:mesho_clone/utils/constants.dart';
import 'package:mesho_clone/utils/responsive.dart';

class ItemOffer extends StatelessWidget {
  const ItemOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.width(95, context),
      height: 140,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: MyImage.assets("${Drawable.image}banner1.png", fit: BoxFit.fill,),
      ),
    );
  }
}
