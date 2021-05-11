import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  // container design
  final double height;
  final Color backgroundColor;
  final double borderRadius;

  final EdgeInsets margin;
  final EdgeInsets contentPadding;
  final String helpText;
  final String hintText;
  final bool enable;
  final bool autoFocus;
  final Widget prefix;
  final IconData suffixIcon;
  final TextEditingController controller;
  final Function(String str) validator;
  final List<TextInputFormatter> formatter;
  final TextInputType inputType;
  final TextCapitalization capitalization;
  final int minLines;
  final int maxLines;
  final InputDecoration decoration;
  final TextAlign textAlign;
  final bool obscureText;
  final Widget suffixWidget;

  const InputField({
    Key key,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
    this.contentPadding,
    this.helpText,
    this.enable,
    this.autoFocus,
    this.prefix,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.formatter,
    this.inputType,
    this.capitalization,
    this.minLines,
    this.maxLines,
    this.decoration,
    this.textAlign,
    this.obscureText,
    this.hintText,
    this.suffixWidget,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      padding: contentPadding ?? EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        color: backgroundColor ?? Colors.grey[200],
      ),
      height: height ?? 50,
      child: Center(
        child: TextFormField(
          controller: controller,
          key: key,
          decoration: decoration == null
              ? InputDecoration(
                  hintText: hintText,
                  suffixIcon: suffixWidget == null
                      ? suffixIcon == null
                          ? null
                          : Icon(
                              suffixIcon,
                              color: Colors.grey,
                            )
                      : suffixWidget,
                  border: InputBorder.none,
                  prefix: prefix,
                )
              : decoration,
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          inputFormatters: formatter,
          enabled: enable ?? true,
          autofocus: autoFocus ?? false,
          validator: validator,
          keyboardType: inputType,
          textCapitalization: capitalization ?? TextCapitalization.none,
          textAlign: textAlign ?? TextAlign.left,
          obscureText: obscureText ?? false,
        ),
      ),
    );
  }
}
