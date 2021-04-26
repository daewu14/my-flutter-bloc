import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../utilities.dart';

/// createdby Daewu Bintara
/// Saturday, 1/16/21

class MyWebView extends StatefulWidget {
  String data;
  bool isDarkMode;
  MyWebView({this.data, this.isDarkMode = true});

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  double sizedBoxHeight = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // widget.data = widget.isDarkMode
    //     ? "<div style= color:#ffffff; >${widget.data}</div>"
    //     : widget.data.toString();
    // print("New Data : ${widget.data}");
  }

  @override
  Widget build(BuildContext context) {

    return Html(
      data: """${widget.data ?? ""}""",
      shrinkWrap: true,
      onImageTap: (imgUrl){
        Utilities.intentOpenUrl(link: imgUrl);
      },
      onLinkTap: (urlLink){
        Utilities.intentOpenUrl(link: urlLink);
      },
    );

    // return SizedBox(
    //   height: sizedBoxHeight,
    //   child: Stack(
    //     children: [
    //       WebView(
    //         opaque: false,
    //         gestureNavigationEnabled: true,
    //         initialUrl: '',
    //         // gestureRecognizers: Set()..add(Factory<VerticalDragGestureRecognizer>(()=>VerticalDragGestureRecognizer())),
    //         javascriptMode: JavascriptMode.unrestricted,
    //         onWebViewCreated: (WebViewController webViewController) {
    //           _webViewController = webViewController;
    //           var data = "${widget.data}";
    //           // if(Platform.isIOS) {
    //           data = """
    //              <!DOCTYPE html>
    //                <head>
    //                <meta name=viewport content=width=device-width, initial-scale=1.0>
    //                </head>
    //                <body style=margin: 0; padding: 0;>
    //                 $data
    //                 <br>
    //                </body>
    //              </html>
    //
    //              """;
    //           // }
    //           webViewController.loadUrl( Uri.dataFromString(
    //               data,
    //               mimeType: 'text/html',
    //               encoding: Encoding.getByName('utf-8')
    //           ).toString());
    //         },
    //         onPageFinished: (url){
    //           _webViewController
    //               .evaluateJavascript("document.body.clientHeight")
    //               .then((height) {
    //             height = height;
    //             print("Height of Page is: $height}");
    //             sizedBoxHeight = double.parse(height);
    //             setState(() {});
    //           });
    //         },
    //         navigationDelegate: (NavigationRequest request) {
    //           if (request.url.startsWith('http') || request.url.startsWith('https')) {
    //             Utilities.intentOpenUrl(link: request.url);
    //             return NavigationDecision.prevent;
    //           }
    //           return NavigationDecision.navigate;
    //         },
    //       ),
    //     ],
    //   ),
    // );
  }
}
