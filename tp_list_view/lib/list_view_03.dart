import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ListView03 extends StatelessWidget {
  const ListView03({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = [
      for (int i = 0; i < 20; i++) "https://picsum.photos/250?image=$i"
    ];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(entries[index]),
            leading:
                CircleAvatar(backgroundImage: NetworkImage(entries[index])),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) =>  AlertDialog(
                        title: const Text('Alert image'),
                        content: Image.network(entries[index]),
                      ));

              developer.log("data: ${entries[index]}");
            },
          );
        },
      ),
    );
  }
}
