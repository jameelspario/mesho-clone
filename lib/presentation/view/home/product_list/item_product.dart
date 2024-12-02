import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesho_clone/presentation/widgets/my_image.dart';
import 'package:mesho_clone/utils/constants.dart';
import 'package:mesho_clone/utils/extensions.dart';
import 'package:mesho_clone/utils/responsive.dart';

import '../../../widgets/discount_widget.dart';
import '../../../widgets/drawable_widgets.dart';
import '../../../widgets/labels.dart';
import '../../../widgets/rating_widget.dart';

class ItemProduct extends StatefulWidget {
  const ItemProduct({super.key});

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  final GlobalKey _widgetKey = GlobalKey();

  double _getHeight() {
    final rb = _widgetKey.currentContext?.findRenderObject() as RenderBox?;
    if (rb != null) {
      return rb.size.height;
    } else {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      // padding: EdgeInsets.all(4),
      width: Responsive.width(48, context),
      constraints: BoxConstraints(maxWidth: 180),
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                key: _widgetKey,
                aspectRatio: 1.5,
                child: MyContainer(
                    borderWidth: 1,
                    // borderColor: Colors.black38,
                    child: MyImage.assets("${Drawable.image}shirt.png")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    4.0.spaceY,
                    LabelSmall(
                      "Elegant Lint Shavers",
                      fontSize: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "${Strings.r}0",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        DiscountWidget(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                        ),
                      ],
                    ),
                    LabelSmall(
                      "185 with 1 special Offer",
                      fontSize: 10,
                    ),
                    LabelSmall(
                      "Free Delivery",
                      fontSize: 10,
                    ),
                    2.0.spaceY,
                    Row(
                      children: [
                        const RatingWidget(),
                        4.0.spaceX,
                        LabelSmall("(4000)"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child: CircleAvatar(
              child: Icon(Icons.favorite),
              backgroundColor: Colors.white54,
              radius: 12,
            ),
          ),
          Positioned(
            left: 8,
            top: _getHeight() - 8,
            child: Builder(builder: (context) {
              return MyContainer(
                padding: EdgeInsets.symmetric(horizontal: 6),
                fillColor: Colors.black,
                radius: 20,
                child: LabelSmall("Get off", color: Colors.white,),
              );
            }),
          ),
        ],
      ),
    );
  }
}
