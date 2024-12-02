import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextBox extends StatelessWidget {
  const MyTextBox(
      {this.hintText,
      this.hintStyle,
      this.textAlign = TextAlign.start,
      this.padding,
      this.maxLines = 1,
      this.borderWidth=0.5,
      this.borderRadius=5.0,
      this.prefixIcon,
      this.prefixIconConstraints,
      this.suffixIcon,
        this.controller,
        this.focusNode,
        this.readOnly=false,
        this.fillColor,
        this.txtInputType,
        this.onChanged,
        this.onTap,
        this.textInputFormatter,/* [FilteringTextInputFormatter.digitsOnly ]*/
      Key? key})
      : super(key: key);
  final String? hintText;
  final int maxLines;
  final EdgeInsetsGeometry? padding;
  final TextStyle? hintStyle;
  final double borderWidth;
  final double borderRadius;
  final TextEditingController? controller;
  final TextAlign textAlign;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final bool readOnly;
  final Color? fillColor;
  final TextInputType? txtInputType;
  final List<TextInputFormatter>? textInputFormatter;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: hintStyle,
      textAlign: textAlign,
      focusNode: focusNode,
      readOnly: readOnly,
      keyboardType:txtInputType ,
      inputFormatters:textInputFormatter,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: padding,
        suffixIcon:suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        filled: true,
        prefixIconConstraints:prefixIconConstraints,
        border: OutlineInputBorder(
            borderSide: BorderSide(width: borderWidth, color: Colors.grey),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        enabledBorder : OutlineInputBorder(
            borderSide: BorderSide(width: borderWidth, color: Colors.grey),
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: borderWidth, color: Colors.grey),
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        hintText: hintText,
        hintStyle: hintStyle,
      ),
    );
  }
}



class MyTextBoxLess extends StatelessWidget {
  const MyTextBoxLess(
      {this.hintText,
        this.hintStyle,
        this.textAlign = TextAlign.start,
        this.padding,
        this.maxLines = 1,
        this.borderWidth=0.5,
        this.borderRadius=5.0,
        this.prefixIcon,
        this.prefixIconConstraints,
        this.suffixIcon,
        this.controller,
        this.focusNode,
        this.readOnly=false,
        this.fillColor,
        this.txtInputType,
        this.onChanged,
        this.onTap,
        this.textInputFormatter,/* [FilteringTextInputFormatter.digitsOnly ]*/
        Key? key})
      : super(key: key);
  final String? hintText;
  final int maxLines;
  final EdgeInsetsGeometry? padding;
  final TextStyle? hintStyle;
  final double borderWidth;
  final double borderRadius;
  final TextEditingController? controller;
  final TextAlign textAlign;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final bool readOnly;
  final Color? fillColor;
  final TextInputType? txtInputType;
  final List<TextInputFormatter>? textInputFormatter;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: hintStyle,
      textAlign: textAlign,
      focusNode: focusNode,
      readOnly: readOnly,
      keyboardType:txtInputType ,
      inputFormatters:textInputFormatter,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: padding,
        suffixIcon:suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        filled: true,
        prefixIconConstraints:prefixIconConstraints,
        border: InputBorder.none,
        enabledBorder : InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
    );
  }
}

