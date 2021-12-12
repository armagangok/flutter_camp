import 'package:app2/app/components/stacks/left_stack.dart';
import 'package:app2/app/components/stacks/right_stack.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeView"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            LeftColumn(),
            RightColumn(),
          ],
        ),
      ),
    );
  }
}
