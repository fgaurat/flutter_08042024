import 'package:flutter/material.dart';
import 'package:tp_list_view/list_view_01.dart';
import 'package:tp_list_view/list_view_02.dart';
import 'package:tp_list_view/list_view_03.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListView03(),
    );
  }
}

