import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class creation extends StatefulWidget {
  const creation({super.key});

  @override
  State<creation> createState() => _creationState();
}

class _creationState extends State<creation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Création'),
      ),
      body: const Text('Écran création'),
    );
  }
}
