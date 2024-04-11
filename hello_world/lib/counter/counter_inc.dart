import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class CounterInc extends StatelessWidget {

  final void Function() onClick;

  const CounterInc({super.key,required this.onClick});

  @override
  Widget build(BuildContext context) {
    developer.log("CounterInc build $hashCode");
    return ElevatedButton(
      onPressed: onClick,
      child: const Text('Inc'),
    );
  }
}