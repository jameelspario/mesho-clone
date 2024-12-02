import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';

import '../../utils/constants.dart';
import 'drawable_widgets.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({this.active = true, Key? key}) : super(key: key);
  final bool active;

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      fillColor: Constants.green01,
      radius: 20,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "4.1",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: active ? Constants.white : Constants.green01,
                ),
          ),
          4.0.spaceX,
          Icon(
            Icons.star,
            color: active ? Constants.white : Constants.green01,
            size: 8,
          )
        ],
      ),
    );
  }
}
