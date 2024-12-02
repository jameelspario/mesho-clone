import 'package:flutter/material.dart';
import 'package:mesho_clone/presentation/widgets/my_image.dart';
import 'package:mesho_clone/utils/constants.dart';

class ItemRecent extends StatelessWidget {
  const ItemRecent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
              height: 60,
              // width: 40,
              child: MyImage.assets(
                "${Drawable.image}pant.png",
                fit: BoxFit.fill,
              )),
          Text(
            "Trousers",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
