import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  final String name;
  const Hello({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("Bonjour $name"),
        Text("Hello $name"),
        ]),
    );
  }
}