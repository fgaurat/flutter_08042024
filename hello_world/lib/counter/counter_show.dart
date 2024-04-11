import 'package:flutter/material.dart';
import 'dart:developer' as developer;
class CounterShow extends StatelessWidget {
  final int cpt;
  const CounterShow({super.key,required this.cpt});

  @override
  Widget build(BuildContext context) {
    developer.log("CounterShow build $hashCode");
    return Text("cpt $cpt");
  }
}