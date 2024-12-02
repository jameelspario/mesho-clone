import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage(this.image, {this.fit, super.key});

  const MyImage.assets(this.image, {this.fit, super.key});

  final String? image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return image == null
        ? Container()
        : Image.asset(
            image!,
            fit: fit,
          );
  }
}
