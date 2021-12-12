import 'package:app2/app/components/widgets/consumer_text.dart';
import 'package:app2/core/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RightWidgetB extends StatelessWidget {
  const RightWidgetB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: 400,
      width: 120,
      child: Column(
        children: const <Widget>[
          Text("Right Column"),
          RightWidgetC(),
        ],
      ),
    );
  }
}

class RightWidgetC extends StatelessWidget {
  const RightWidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("White");
    return Container(
      color: Colors.white,
      height: 100,
      width: 100,
      child: const ConsumerColumn(),
    );
  }
}


class ConsumerColumn extends StatelessWidget {
  const ConsumerColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Data _data = Provider.of<Data>(context);

    return Column(
      children: [
        const Text("Widget C"),
        Text(_data.city),
        TextField(
          onChanged: (input) => _data.changeCity(input),
        ),
      ],
    );
  }
}
