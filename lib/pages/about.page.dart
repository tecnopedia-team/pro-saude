import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}

void _navHome(BuildContext context) {
  Navigator.pop(context);
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sobre App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const WebView(
        initialUrl: 'http://prosaude.tecnopedia.com.br/bkp-02/html/ltr/vertical-menu-template/page-maintenance.html',
        javaScriptMode: JavaScriptMode.unrestricted,
      ),
    );
  }
}