import 'package:flutter/material.dart';
import 'package:tp_automne_2024/main.dart';

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
      body: Center(
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                hintText: "Nom de la tache"
              ),
            ),

            TextField(
              decoration: InputDecoration(
                  hintText: "Date de la tache"
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
                child: const Text("Ajouter la tâche"))


          ],
        ),
      ),
    );
  }
}
