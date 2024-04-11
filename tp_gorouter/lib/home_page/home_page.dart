import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/first_page/first_page.dart';
import 'package:tp_gorouter/hello_page/hello_page.dart';

class HomePage extends StatelessWidget {
  static const String route = "/";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(children: [
        const Text('HomePage'),
        ElevatedButton(
            onPressed: () {
              context.go(FirstPage.route);
              // GoRouter.of(context).push("/first");
            },
            child: const Text('Go To FirstPage')),
        ElevatedButton(
            onPressed: () {
              // context.go("${HelloPage.route}/fred"); // /hello/fred
              context.goNamed("hello",pathParameters: {"name":"fred"});
            },
            child: const Text('Go To Hello'))
      ]),
    );
  }
}
