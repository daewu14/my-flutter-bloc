import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Wednesday, 3/17/21

class ShimmerLoading extends StatefulWidget {
  Widget child;
  ShimmerLoading({this.child});
  @override
  _ShimmerLoadingState createState() => _ShimmerLoadingState(child: child);
}

class _ShimmerLoadingState extends State<ShimmerLoading> with SingleTickerProviderStateMixin {
  Widget child;
  _ShimmerLoadingState({this.child});
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(seconds: 1)
    )..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.stop(canceled: true);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (child==null){
      return Center(child: Text("Child Tidak boleh Kosong"));
    }
    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget){
        return ShaderMask(
          shaderCallback: (rect){
            return LinearGradient(
                colors: [Colors.grey[300], Colors.grey[100], Colors.grey[300]],
                stops: [controller.value - 0.3, controller.value, controller.value + 0.3]
            ).createShader(Rect.fromLTWH(0, 0, rect.width, rect.height));
          },
          child: Container(
            child: child,
          ),
          blendMode: BlendMode.srcIn,
        );
      },
    );
  }
}