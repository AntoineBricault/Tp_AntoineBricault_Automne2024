import 'package:flutter/material.dart';
import 'package:tp_automne_2024/connexion.dart';
import 'package:tp_automne_2024/creation.dart';
import 'package:tp_automne_2024/inscription.dart';
import 'package:tp_automne_2024/main.dart';


class TiroirNav extends StatefulWidget {
  const TiroirNav({super.key});

  @override
  State<TiroirNav> createState() => TiroirNavState();
}

class TiroirNavState extends State<TiroirNav> {
  @override
  Widget build(BuildContext context) {
    var listView = ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 200,
        ),
        ListTile(
          dense: true,
          leading: const Icon(Icons.home),
          title: const Text("Accueil"),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(title: 'Accueil',),
              ),
            );
          },
        ),

        ListTile(
          dense: true,
          leading: const Icon(Icons.add),
          title: const Text("Création d'une tâche"),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const creation(),
              ),
            );
          },
        ),

        ListTile(
          dense: true,
          leading: const Icon(Icons.add),
          title: const Text("inscription"),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const inscritpion(),
              ),
            );
          },
        ),

        ListTile(
          dense: true,
          leading: const Icon(Icons.add),
          title: const Text("Connexion"),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const connexion(),
              ),
            );
          },
        ),


      ],
    );

    return Drawer(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: listView,
      ),
    );
  }
}
