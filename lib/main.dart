import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'contact.dart';
import 'videoplayer.dart';
import 'livetv.dart';
import 'newspaper.dart';
import 'widget.dart';
import 'medialist.dart';
import 'loading.dart';
import 'data.dart';
import 'sports_update.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'routersetup.dart';

void main() { runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      accentColor: Color.fromRGBO(58, 66, 86, 1.0),
      canvasColor: Colors.blue,
    ),
    //home: IspApp(),
    initialRoute: '/',
    routes: {
    //  '/': (_) => IspApp(),
      '/': (_) => Loader(),
      '/home': (_) => IspApp(),
      '/contact': (_) => Contacts(),
      '/media': (_) => MediaList(),
      '/routersetup': (_) => RouterSetup(),
      '/liveTv': (_) => LiveTv(),
      '/video': (_) => ServerVideo(),
      '/browser': (_) => ServerBrowser(),
      '/news': (_) => NewsListView(),
      '/sport' : (_) => Sports(),
      '/browserX': (_) => WebviewScaffold(
        url: selectedUrlx,
        appBar: AppBar( title: Text("City Online Ltd."),),
        withZoom: true,
      ),
    }
));}
