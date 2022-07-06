import 'package:flutter/material.dart';
import 'package:mvvm_mobx/features/posts/view/post_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobx MVVM',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  PostView(),
    );
  }
}
