import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';

class CoinContainer extends StatelessWidget {
  const CoinContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Row(
        children: [
          Icon(Icons.currency_bitcoin, size: 14,),
          4.0.spaceX,
          Text(
            "0 Coins",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.blueAccent,
                ),
          ),
        ],
      ),
    );
  }
}
