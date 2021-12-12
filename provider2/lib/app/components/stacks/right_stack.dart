import 'package:app2/app/components/stacks/widgets_column.dart';
import 'package:flutter/material.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("red");
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: RightWidgetB(),
      ),
    );
  }
}