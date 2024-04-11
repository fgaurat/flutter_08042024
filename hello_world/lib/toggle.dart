import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool show = false;
  String label = "Show";

  toggleShow() {
    setState(() {
      show = !show;
      label = show?"Hide":"Show";
    });
    developer.log("Click toggleShow $show");
  }

  @override
  Widget build(BuildContext context) {
    developer.log("build");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: toggleShow, child: Text(label)),
        if (show) const Text("Toggle"),
      ],
    );
  }
}
