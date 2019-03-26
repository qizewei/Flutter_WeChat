import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MaterialApp(
      title: 'wechat',
      debugShowCheckedModeBanner: false,
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "./friends": (_) => new WebviewScaffold(
              url: "https://baidu.com/",
              appBar: new AppBar(
                title: new Text('微信朋友圈'),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        "search": (BuildContext context) => new Search(),
      },
      home: new LoadingPage(),
    ));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Color(0xff393a3f),
);
