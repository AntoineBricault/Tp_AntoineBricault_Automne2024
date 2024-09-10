import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class inscritpion extends StatefulWidget {
  const inscritpion({super.key});

  @override
  State<inscritpion> createState() => _inscritpionState();
}

class _inscritpionState extends State<inscritpion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscritpion'),
      ),
      body: const Text('Écran inscritpion'),
    );
  }
}
