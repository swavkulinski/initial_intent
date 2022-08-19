import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:initial_intent/initial_intent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _initialIntent = "";
  final _initialIntentPlugin = InitialIntent();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String initialIntent = "";
    try {
      initialIntent = await _initialIntentPlugin.getData();
    } on PlatformException catch (e) {
      debugPrint('Failure reading initial data: $e');
    }

    if (!mounted) return;

    setState(() {
      _initialIntent = initialIntent;
    });
  }

  @override
  Widget build(BuildContext context) {
    final d = Uri.decodeFull(_initialIntent);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Intent data: $d\n',maxLines: 20,),
        ),
      ),
    );
  }

}
