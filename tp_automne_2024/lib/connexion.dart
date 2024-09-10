import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class connexion extends StatefulWidget {
  const connexion({super.key});

  @override
  State<connexion> createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: const Text('Écran connexion'),
    );
  }
}
