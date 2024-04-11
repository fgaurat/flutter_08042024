import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/second_page/second_page.dart';


class FirstPage extends StatelessWidget {
  static const String route="/first";


  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FirstPage'),),
      body:  Column(children: [
        const Text('FirstPage'),
        ElevatedButton(onPressed: (){
          context.push(SecondPage.route);
          // GoRouter.of(context).push("/first");
        }, child: const Text('Go To SecondPage'))

        ]),
    );
  }
}