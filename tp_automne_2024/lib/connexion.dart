import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_automne_2024/inscription.dart';
import 'package:tp_automne_2024/main.dart';
import 'package:tp_automne_2024/transfert.dart';

import 'lib_http.dart';

// TODO Un ecran minimal avec un tres peu de code
class connexion extends StatefulWidget {
  const connexion({super.key});

  @override
  State<connexion> createState() => _connexionState();
}

class _connexionState extends State<connexion> {

  final textControllerNom = TextEditingController();
  final textControllerMDP = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textControllerNom.dispose();
    textControllerMDP.dispose();
    super.dispose();
  }

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
              controller: textControllerNom,
            ),

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mot de passe"
              ),
              controller: textControllerMDP,
            ),

            OutlinedButton(
                onPressed: () async {

                  try {
                    SigninRequest req = SigninRequest();
                    req.username = textControllerNom.text;
                    req.password = textControllerMDP.text;
                    var reponse = await signin(req);
                    print(reponse);
                  } on DioException catch (e) {
                    print(e);
                    String message = e.response!.data;
                    if (message == "BadCredentialsException") {
                      print('login deja utilise');
                    } else {
                      print('autre erreurs');
                    }

                  }



                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const MyHomePage(
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
