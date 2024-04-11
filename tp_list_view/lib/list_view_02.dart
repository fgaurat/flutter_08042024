import 'package:flutter/material.dart';
import 'dart:developer' as developer;


class ListView02 extends StatelessWidget {
  const ListView02({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = List.generate(100, (index) => "Item $index");
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(entries[index]),
            trailing: const Icon(Icons.delete),
            leading: const Icon(Icons.catching_pokemon),
            onTap: () {
                developer.log("data: ${entries[index]}");
            },
          );
        },
      ),
    );
  }
}
