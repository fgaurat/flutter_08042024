import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/first_page/first_page.dart';
import 'package:tp_gorouter/hello_page/hello_page.dart';
import 'package:tp_gorouter/home_page/home_page.dart';
import 'package:tp_gorouter/second_page/second_page.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.route,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: FirstPage.route,
      builder: (BuildContext context, GoRouterState state) {
        return const FirstPage();
      },
    ),
    GoRoute(
      path: SecondPage.route,
      builder: (BuildContext context, GoRouterState state) {
        return const SecondPage();
      },
    ),
    GoRoute(
      // path: HelloPage.paramRoute, <= c'est moche
      path: HelloPage.route,
      name: "hello",
      builder: (BuildContext context, GoRouterState state) {
        String name = state.pathParameters['name']!;
        return HelloPage(name:name);
      },
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
