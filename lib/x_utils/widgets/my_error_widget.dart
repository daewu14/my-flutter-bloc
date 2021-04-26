import 'package:flutter/material.dart';
import '../../x_src/my_res.dart';

/// createdby Daewu Bintara
/// Thursday, 3/18/21

class MyErrorWidget extends StatelessWidget {
  final String text;
  final String btnText;
  final Function onClick;

  const MyErrorWidget({Key key, this.text, this.onClick, this.btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(XR().assetsImage.img_advertisement,
              height: 70,
            ),
            SizedBox(height: 10.0),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: onClick,
              child: Text(
                btnText,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
