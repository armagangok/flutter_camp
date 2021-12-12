import 'package:app2/app/components/widgets/consumer_text.dart';
import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              "Left Column",
              style: TextStyle(color: Colors.white),
            ),
            ConsumerText2(),
          ],
        ),
      ),
    );
  }
}
