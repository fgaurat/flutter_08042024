import 'package:flutter/material.dart';
import 'package:tp_routing/screens/first_screen/first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeScreen')),
      body: Center(
        child: ElevatedButton(
            child: const Text("Go to FirstScreen"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ),
              );
            }),
      ),
    );
  }
}
