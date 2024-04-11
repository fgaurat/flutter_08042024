import 'package:flutter/material.dart';
import 'package:tp_routing/screens/second_screen/second_screen.dart';
import 'dart:developer' as developer;

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FirstScreen')),
      body:  Column(
        children: [
          const Text('Hello World!'),
          ElevatedButton(onPressed: () {
              
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(
              //     builder: (context) => const SecondScreen(),
              //   ),(route) => route.isFirst,
              // );
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                )
              ).then((r) {
                  developer.log(r);
              });

          }, child: const Text('Go to SecondScreen'))
        ],
      ),
    );
  }
}
