import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';
import 'package:mesho_clone/utils/responsive.dart';

import 'item_recent.dart';

class RecentViewItems extends StatelessWidget {
  const RecentViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.width(100, context),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recently Viewed",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          6.0.spaceY,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemRecent(),
                ItemRecent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
