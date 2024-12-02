import 'package:flutter/material.dart';
import 'package:mesho_clone/utils/extensions.dart';

import '../../widgets/my_text_box.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          6.0.spaceX,
          Expanded(
              child: MyTextBoxLess(
            fillColor: Colors.white,
            hintText: "Search by Keyword",
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            padding: EdgeInsets.symmetric(vertical: 8),
          )),
          6.0.spaceX,
          Icon(Icons.close),
          6.0.spaceX,
          Icon(Icons.mic),
          6.0.spaceX,
          Icon(Icons.camera_alt),
        ],
      ),
    );
  }
}
