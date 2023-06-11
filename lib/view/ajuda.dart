import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ajuda"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Texto de exemplo para screen de ajuda.',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ));
  }
}
