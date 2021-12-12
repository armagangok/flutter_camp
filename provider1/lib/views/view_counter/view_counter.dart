import 'package:flutter/material.dart';
import 'package:provider_app/views/homeview/components/stacks/stack.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: ColumnWidget(),
      ),
      floatingActionButton: const FAButtonStack(),
    );
  }
}
