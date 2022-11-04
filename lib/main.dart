import 'package:flutter/material.dart';
import './download_button.dart';
import './go_button.dart';
import './continue_button.dart';
import 'verify_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Bay Test',
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        fontFamily: 'Schyler',
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(85, 94, 206, 1),
          title: const Text('Tech Bay Test'),
        ),
        body: ListView(
          itemExtent: 70.0,
          padding: const EdgeInsets.all(25),
          children: const [
            DownloadButton(),
            GoButton(),
            ContinueButton(),
            VerifyButton()
          ],
        ),
      ),
    );
  }
}
