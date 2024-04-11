import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/home_page/home_page.dart';


class SecondPage extends StatelessWidget {
  static const String route="/second";


  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecondPage'),),
      body:  Column(children: [
        const Text('SecondPage'),
        ElevatedButton(onPressed: (){
          context.go(HomePage.route);
          // GoRouter.of(context).push("/first");
        }, child: const Text('Go Home'))

        ]),
    );
  }
}