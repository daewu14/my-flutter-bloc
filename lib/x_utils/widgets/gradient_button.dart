import '../../main.dart';
import '../../x_src/my_res.dart';
import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Monday, 3/15/21

class GradientButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;
  final double height;
  Gradient gradient;
  final EdgeInsetsGeometry padding;

  GradientButton({
    Key key,
    @required this.onPressed,
    this.gradient,
    this.text,
    this.padding,
    this.height = 43.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(gradient == null) {
      gradient = LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [MyColor.PRIMARY_COLOR, Colors.pink[200], Colors.pink[100]]
      );
    }

    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          )
        ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
            onTap: onPressed,
            child: Center(
              child: Text(text ?? "",
                style: themeData.textTheme.subtitle1.copyWith(
                    color: Colors.white
                ), textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
