import 'package:flutter/services.dart';

import '../../x_src/my_res.dart';
import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Monday, 3/15/21

class CustomTextFieldWidget extends StatefulWidget {
  Function(String) onChanged;
  String labelText;
  String hint;
  String initalValue;
  FocusNode focusNode;
  FocusNode focusNodeNext;
  bool obscureText;
  bool inputNumber;
  bool enable;
  int maxLength;
  int maxLines;
  double cornerRadius;
  Color fillColor;
  Color labelColor;
  Color borderColor;
  Color textFillColor;
  Color hintColor;
  FormFieldSetter<String> onSaved;
  TextEditingController controller;


  CustomTextFieldWidget({this.onChanged,
    this.labelText = "Label",
    this.hint = "Tulis disini",
    this.initalValue = "",
    this.focusNode,
    this.focusNodeNext,
    this.maxLength = 255,
    this.maxLines = 1,
    this.enable = true,
    this.cornerRadius = 10,
    this.inputNumber = false,
    this.fillColor = Colors.white,
    this.labelColor = Colors.grey,
    this.hintColor = Colors.grey,
    this.textFillColor = Colors.black,
    this.onSaved,
    this.borderColor = Colors.white,
    this.controller,
    this.obscureText = false});

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool _withIconShowHideText = false;
  bool _obsText = false;

  @override
  void initState() {
    super.initState();
    if(widget.obscureText){
      _withIconShowHideText = true;
      _obsText  = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: MySpace.paddingM),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("${widget.labelText}",
            style: TextStyle(color: widget.labelColor),
          ),
        ),
        SizedBox(height: MySpace.paddingS),
        Stack(
          children: [
            widget.controller == null ?
            TextFormField(
              validator: (val) {
                if (val == '') {
                  return "${widget.labelText} ${XR().string(context).cannot_null()}";
                } else {
                  return null;
                }
              },
              enabled: widget.enable,
              initialValue: widget.initalValue,
              maxLength: widget.maxLength,
              onChanged: widget.onChanged,
              focusNode: widget.focusNode,
              onSaved: widget.onSaved,
              style: TextStyle(color: widget.textFillColor),
              onFieldSubmitted: (val) {
                if(widget.focusNodeNext != null){
                  FocusScope.of(context).unfocus();
                  FocusScope.of(context).requestFocus(widget.focusNodeNext);
                } else {
                  FocusScope.of(context).unfocus();
                  return FocusScope.of(context).requestFocus(FocusNode());
                }
              },
              maxLines: widget.maxLines,
              obscureText: _obsText,
              textInputAction: widget.focusNodeNext != null ? TextInputAction.next : TextInputAction.done,
              keyboardType: widget.inputNumber == true ? TextInputType.number : TextInputType.text,
              inputFormatters: widget.inputNumber == true ? [FilteringTextInputFormatter.digitsOnly] : null,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fillColor,
                hintText: widget.hint,
                hintStyle: TextStyle(color: widget.hintColor),
                counterText: "",
//                labelText: "$labelText",
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor,
                    width: 1.0,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor,
                    width: 1.0,
                  ),
                ),
              ),
            ) :
            TextFormField(
              controller: widget.controller,
              validator: (val) {
                if (val == '') {
                  return "${widget.labelText} ${XR().string(context).cannot_null()}";
                } else {
                  return null;
                }
              },
              enabled: widget.enable,
              maxLength: widget.maxLength,
              onChanged: widget.onChanged,
              focusNode: widget.focusNode,
              onSaved: widget.onSaved,
              style: TextStyle(color: widget.textFillColor),
              onFieldSubmitted: (val) {
                if(widget.focusNodeNext != null){
                  FocusScope.of(context).unfocus();
                  FocusScope.of(context).requestFocus(widget.focusNodeNext);
                } else {
                  FocusScope.of(context).unfocus();
                  return FocusScope.of(context).requestFocus(FocusNode());
                }
              },
              maxLines: widget.maxLines,
              obscureText: _obsText,
              textInputAction: widget.focusNodeNext != null ? TextInputAction.next : TextInputAction.done,
              keyboardType: widget.inputNumber == true ? TextInputType.number : TextInputType.text,
              inputFormatters: widget.inputNumber == true ? [FilteringTextInputFormatter.digitsOnly] : null,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fillColor,
                hintText: widget.hint,
                counterText: "",
                hintStyle: TextStyle(color: widget.hintColor),
//                labelText: "$labelText",
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor,
                    width: 1.0,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor,
                    width: 1.0,
                  ),
                )
              ),
            ) ,
            _withIconShowHideText == false ? Container() :
            Positioned(
              right: MySpace.paddingS,
              top: 0,
              child: IconButton(
                icon: _obsText == true ? Icon(Icons.visibility_off, color: Colors.grey,) : Icon(Icons.visibility, color: Colors.grey,),
                onPressed: (){
                  if(_obsText){
                    _obsText = false;
                  } else {
                    _obsText = true;
                  }
                  setState((){});
                },
              ),
            )
          ],
        )
      ],
    );
  }
}