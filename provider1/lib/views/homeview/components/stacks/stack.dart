import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/number_provider/number_provider.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<Counter>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Consumer<Counter>(
          builder: (context, value, child) => Text(
            '${_counter.getNumber}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ],
    );
  }
}

class FAButtonStack extends StatelessWidget {
  const FAButtonStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<Counter>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          heroTag: "1",
          onPressed: () => {
            debugPrint("hello1"),
            _counter.increase(),
          },
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          heroTag: "2",
          onPressed: () => {
            debugPrint("hello2"),
            _counter.reduce(),
          },
        )
      ],
    );
  }
}
