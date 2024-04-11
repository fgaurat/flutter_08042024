import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/home_page/home_page.dart';


class HelloPage extends StatelessWidget {
  static const String route="/hello/:name";
  // static const String paramRoute="$route/:name"; <= C'est moche
  final String name;

  const HelloPage({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HelloPage'),),
      body:  Column(children: [
        Text('Hello $name'),
        ElevatedButton(onPressed: (){
          context.go(HomePage.route);
          // GoRouter.of(context).push("/first");
        }, child: const Text('Go Home'))

        ]),
    );
  }
}