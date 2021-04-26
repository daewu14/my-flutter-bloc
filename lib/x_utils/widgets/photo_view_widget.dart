import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

/// createdby Daewu Bintara
/// Friday, 4/9/21

class PhotoViewWidget extends StatefulWidget {

  final List<String> galleryItems;

  const PhotoViewWidget({Key key, this.galleryItems}) : super(key: key);

  @override
  _PhotoViewWidgetState createState() => _PhotoViewWidgetState();
}

class _PhotoViewWidgetState extends State<PhotoViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: NetworkImage(widget.galleryItems[index]),
                  initialScale: PhotoViewComputedScale.contained * 0.8,
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 1.1,
                  heroAttributes: PhotoViewHeroAttributes(tag: widget.galleryItems[index]),
                );
              },
              itemCount: widget.galleryItems.length,
            ),
          ),
          !Platform.isIOS ? Container() :
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CloseButton(
              onPressed: ()=>Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}
