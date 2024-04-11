import 'package:flutter/material.dart';

class SayHello extends StatefulWidget {
  const SayHello({super.key});

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {
  String name="";

  void updateName(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: updateName,
        ),
        Text("Bonjour $name")
      ],
    );
  }
}
