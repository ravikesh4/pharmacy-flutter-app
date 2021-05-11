import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onLongPress;
  final Color color;
  final Color disabledColor;
  final Color focusColor;
  final Color hoverColor;
  final Color splashColor;
  final double elevation;
  final double focusElevation;
  final double hoverElevation;
  final double disabledElevation;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double btnHeight;
  final double minWidth;
  final Widget child;
  final Clip clipBehavior;
  final ShapeBorder shape;
  final ButtonTextTheme textTheme;
  final Color textColor;
  final VisualDensity visualDensity;
  final Duration animationDuration;
  final Color disabledTextColor;
  final double height;
  final double width;

  const CustomButton({
    Key key,
    this.height,
    @required this.onPressed,
    this.onLongPress,
    this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.padding,
    this.margin,
    this.btnHeight,
    this.minWidth,
    this.clipBehavior,
    this.shape,
    this.textTheme,
    this.textColor,
    this.visualDensity,
    this.animationDuration,
    this.disabledTextColor,
    this.child,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: MaterialButton(
        height: btnHeight ?? 50,
        onPressed: onPressed ?? null,
        child: child,
        color: color ?? Theme.of(context).buttonColor,
        textColor: textColor ?? Colors.white,
        shape: shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onLongPress: onLongPress,
        disabledColor: disabledColor ?? Color(0x551a9c7d),
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashColor: splashColor,
        elevation: elevation ?? 0,
        focusElevation: focusElevation,
        hoverElevation: hoverElevation,
        disabledElevation: disabledElevation,
        padding: padding ?? EdgeInsets.all(0),
        minWidth: minWidth,
        clipBehavior: clipBehavior ?? Clip.none,
        textTheme: textTheme,
        visualDensity: visualDensity,
        animationDuration: animationDuration,
        disabledTextColor: Colors.black87,
      ),
    );
  }
}
