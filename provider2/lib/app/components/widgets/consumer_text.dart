import 'package:app2/core/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsumerText2 extends StatelessWidget {
  const ConsumerText2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Data _data = Provider.of<Data>(context);
    return Text(
      _data.city,
      style: const TextStyle(color: Colors.white),
    );
  }
}
