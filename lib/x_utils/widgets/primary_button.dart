import '../../main.dart';
import '../../x_src/my_res.dart';
import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Monday, 3/15/21

class PrimaryButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;
  final EdgeInsetsGeometry padding;

  const PrimaryButton({
    Key key,
    @required this.onPressed,
    this.text,
    this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: padding ?? EdgeInsets.all(11.0),
      color: MyColor.PRIMARY_COLOR,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(text ?? "",
            style: themeData.textTheme.subtitle1.copyWith(
                color: Colors.white
            ), textAlign: TextAlign.center,
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
