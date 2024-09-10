import 'package:flutter/material.dart';
import 'package:tp_automne_2024/main.dart';

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
      body: Center(
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nom d'utilisateur",
              ),
            ),

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mot de passe"
              ),
            ),

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Confirmation du mot de passe"
              ),
            ),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                        title: "Accueil",
                      ),
                    ),
                  );
                },
                child: const Text("Inscription")),

          ],
        ),
      ),
    );
  }
}
