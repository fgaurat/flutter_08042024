import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('SecondScreen')),
        body:  Column(
          children: [
            const Text('Hello World!'),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop("Le résultat");
            }, child: const Text('Back to first screen'))

            ],
        ),
      );
  }
}
