import 'package:flutter/material.dart';
import 'package:provider_app/views/view_counter/view_counter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterView(),
                  ),
                );
              },
              child: const Text("Go to Counter View!"),
            ),
          ],
        ),
      ),
    );
  }
}
