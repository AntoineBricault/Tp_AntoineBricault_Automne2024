import 'package:flutter/material.dart';
import 'package:tp_automne_2024/inscription.dart';
import 'package:tp_automne_2024/main.dart';

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
                child: const Text("Connexion")),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const inscritpion(),
                    ),
                  );
                },
                child: const Text("Inscription"))


          ],
        ),
      ),
    );
  }
}
