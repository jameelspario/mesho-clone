import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({required this.myTextController, this.style, super.key});
  final MyTextController myTextController;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: myTextController.notifier,
        builder: (context, val, _) {
          return Text(val, style:style);
        });
  }
}

class MyTextController {
   // String? _value;

  MyTextController();

  set value(String? v){
    notifier.value = v ?? "";
  }

  final notifier = ValueNotifier<String>("");
}
