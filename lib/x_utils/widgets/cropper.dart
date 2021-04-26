
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';

/// createdby Daewu Bintara
/// Monday, 3/29/21

class ImageCropper {

  static void crop({
    BuildContext context,
    File image,
    String cancelText,
    String confirmText,
    Function(File) resultImage,
    double aspectRatio = 4.0 / 4.0
  }) async {
    final cropKey = GlobalKey<CropState>();
    showCupertinoModalPopup(
        context: context,
        builder: (builder){
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black, //could change this to Color(0xFF737373),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 50,
                  child: Crop(
                    key: cropKey,
                    alwaysShowGrid: true,
                    image: FileImage(image),
                    aspectRatio: aspectRatio,
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text(cancelText ?? "Cancel",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          color: Colors.grey,
                          textColor: Colors.white,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text(confirmText ?? "Done",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: (){
                            final scale = cropKey.currentState.scale;
                            final area = cropKey.currentState.area;
                            ImageCrop.cropImage(
                              file: image,
                              area: area,
                            ).then((value)=>resultImage(value));
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
    );
  }

}