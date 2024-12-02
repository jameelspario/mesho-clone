import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/constants.dart';
import 'package:mesho_clone/utils/extensions.dart';
import 'package:mesho_clone/utils/responsive.dart';

class ProductFilter extends StatelessWidget {
  const ProductFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.width(100, context),
      // margin: EdgeInsets.symmetric(horizontal: 16),
      // padding: EdgeInsets.symmetric(horizontal: 16),
      color: Constants.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
            child: Text(
              "Products For You",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Divider(height: 0,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemIcon(
                  text: "Sort",
                  prefix: Icon(Icons.arrow_upward_rounded),
                ),
                SizedBox(
                  height: 28,
                    child: VerticalDivider()),
                ItemIcon(
                  text: "Category",
                  postfix: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(
                    height: 28,
                    child: VerticalDivider()),
                ItemIcon(
                  text: "Gender",
                  postfix: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(
                    height: 28,
                    child: VerticalDivider()),
                ItemIcon(
                  text: "Filter",
                  postfix: Icon(Icons.sort),
                ),
              ],
            ),
          ),
          Divider(height: 0,),

        ],
      ),
    );
  }
}

class ItemIcon extends StatelessWidget {
  const ItemIcon({this.prefix, this.text, this.postfix, super.key});

  final Widget? prefix;
  final Widget? postfix;
  final String? text;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: prefix,
          ),
          4.0.spaceX,
          Text(
            text ?? "",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          4.0.spaceX,
          Container(
            child: postfix,
          ),
        ],
      ),
    );
  }
}

