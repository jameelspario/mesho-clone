import 'package:flutter/material.dart';

class LabelSmall extends StatelessWidget {
  const LabelSmall(this.text, {this.color, this.fontSize, Key? key})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: fontSize,
            ),
      ),
    );
  }
}

class LabelMedium extends StatelessWidget {
  const LabelMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
