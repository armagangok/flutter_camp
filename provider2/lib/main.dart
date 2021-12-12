import 'package:app2/core/providers/provider_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/views/homeview.dart';

void main() {
  runApp(
    MultiProvider(
      providers: multiProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
