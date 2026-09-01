import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CHROMA FORGE',
      theme: ThemeData.dark(),
      home: const SignalScreen(),
    );
  }
}

class SignalScreen extends StatefulWidget {
  const SignalScreen({super.key});

  @override
  State<SignalScreen> createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadFlutterAsset('assets/index.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07090E),
      appBar: AppBar(
        title: const Text('CHROMA FORGE SIGNAL'),
        centerTitle: true,
        backgroundColor: const Color(0xFF07090E),
        elevation: 0,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
