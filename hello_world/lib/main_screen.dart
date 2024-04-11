import 'package:flutter/material.dart';
import 'package:hello_world/counter/counter_root_state.dart';
import 'package:hello_world/hello.dart';
import 'package:hello_world/say_hello.dart';
import 'package:hello_world/toggle.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: const Text('Main Screen')),
      body: const Column(
        children: [
           Hello(name:"Hugo"),
           Toggle(),
           SayHello(),
           CounterRootState()
        ],
      ),

    );
  }
}