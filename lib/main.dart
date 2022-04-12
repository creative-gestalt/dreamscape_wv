import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DreamscapePage(),
    );
  }
}

class DreamscapePage extends StatefulWidget {
  const DreamscapePage({Key? key}) : super(key: key);

  @override
  State<DreamscapePage> createState() => _DreamscapeState();
}

class _DreamscapeState extends State<DreamscapePage> {
  @override
  Widget build(BuildContext context) {
    double _statusBarHeight  = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: _statusBarHeight),
        child: const WebView(
          initialUrl: 'http://192.168.1.250:8081/dreams',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
