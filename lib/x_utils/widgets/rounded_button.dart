import '../../main.dart';
import '../../x_src/my_res.dart';
import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Monday, 3/15/21

class RoundedButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;
  double width;
  double height;
  TextStyle textStyle;
  final EdgeInsetsGeometry padding;

  Color color, textColor;
  double radius;

  RoundedButton({
    Key key,
    @required this.onPressed,
    this.text,
    this.padding,
    this.color,
    this.textColor,
    this.radius,
    this.width = double.maxFinite,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: padding ?? EdgeInsets.all(11.0),
      color: color ?? MyColor.PRIMARY_COLOR,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15.0)
      ),
      child: Container(
        width: width,
        child: Center(
          child: Text(text ?? "",
            style: textStyle ?? themeData.textTheme.subtitle1.copyWith(
                color: textColor ?? Colors.white
            ), textAlign: TextAlign.center,
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
