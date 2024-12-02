import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';

import '../../widgets/coin_container.dart';


class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(),
          6.0.spaceX,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("jameel ahmad", style: Theme.of(context).textTheme.labelSmall,),
            2.0.spaceY,
            CoinContainer(),
          ],),
          Spacer(),
          Icon(Icons.favorite),
          8.0.spaceX,
          Icon(Icons.notifications),
          8.0.spaceX,
          Icon(Icons.shopping_cart),
        ],
      ),
    );
  }
}
