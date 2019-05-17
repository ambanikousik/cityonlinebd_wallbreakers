import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'contact.dart';
import 'media.dart';
import 'web.dart';
import 'videoplayer.dart';
import 'livetv.dart';
import 'widget.dart';

void main() { runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      accentColor: Color.fromRGBO(58, 66, 86, 1.0),
      canvasColor: Colors.blue,
    ),
    //home: IspApp(),
    initialRoute: '/',
    routes: {
      '/': (_) => IspApp(),
      '/contact': (_) => Contacts(),
      '/media': (_) => media(),
      '/liveTv': (_) => LiveTv(),
      '/bill': (_) => CarouselDemo(),
      '/video': (_) => ServerVideo(),
      '/browser': (_) => ServerBrowser(),
    }
));}
