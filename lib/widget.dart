import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'webviewscaffold.dart';
import 'data.dart';
//import 'package:flutter_webview_plugin/src/base.dart';


class ServerBrowser extends StatefulWidget{
  @override
  _serverBrowser createState() => _serverBrowser();

}

class _serverBrowser extends State<ServerBrowser>{
  final flutterWebViewPlugin = FlutterWebviewPlugin();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return WebviewScaffoldx(
      url: selectedUrlx,
      appBar: AppBar(
        title: const Text('Browse Server'),
      ),
      withZoom: true,
      withJavascript: false,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Waiting.....'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                flutterWebViewPlugin.goBack();
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                flutterWebViewPlugin.goForward();
              },
            ),
            IconButton(
              icon: const Icon(Icons.autorenew),
              onPressed: () {
                flutterWebViewPlugin.reload();
              },
            ),
          ],
        ),
      ),
    );;
  }

}