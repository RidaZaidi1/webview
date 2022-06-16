// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatefulWidget {
  const webview({Key? key}) : super(key: key);

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  int position = 1;

  final key = UniqueKey();
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   body: WebView(
        //  onPageFinished: doneLoading,
        //             onPageStarted: startLoading,
        //     javascriptMode: JavascriptMode.unrestricted,
        //     initialUrl: "https://www.irmedia.org",
        //   ),
        body: IndexedStack(index: position, children: <Widget>[
      WebView(
       initialUrl: "https://www.google.com/maps/d/u/0/embed?mid=1pDkYIbQncl6JY1A4nXjl-_KwRpz2AjI&ehbc=2E312F&ll=26.95978654311696%2C-80.08923762669662&z=15",
        javascriptMode: JavascriptMode.unrestricted,
        key: key,
        onPageFinished: doneLoading,
        onPageStarted: startLoading,
      ),
      Container(
        color: Colors.blue[900],
        child: Center(child: CircularProgressIndicator(
color : Colors.white




        )),
      ),
    ]));
  }
}
