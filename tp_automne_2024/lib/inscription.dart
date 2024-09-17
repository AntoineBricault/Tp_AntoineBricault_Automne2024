import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_automne_2024/lib_http.dart';
import 'package:tp_automne_2024/main.dart';
import 'package:tp_automne_2024/transfert.dart';

// TODO Un ecran minimal avec un tres peu de code
class inscritpion extends StatefulWidget {
  const inscritpion({super.key});

  @override
  State<inscritpion> createState() => _inscritpionState();
}

class _inscritpionState extends State<inscritpion> {
String reponse = "";

  void postHttpInscription() async {
    try {
      var response =
      await Dio().get('https://kickmyb-server.herokuapp.com/test');
      print(response);
      reponse = response.data;
      setState(() {});
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Erreur reseau')));
    }
  }


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
                onPressed: () async {

                  try {
                    SignupRequest req = SignupRequest();
                    req.username = 'test1';
                    req.password = 'password';
                    var reponse = await signup(req);
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
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const MyHomePage(
                        title: "Accueil",
                      ),
                    ),
                  );*/
                },
                child: const Text("Inscription")),

          ],
        ),
      ),
    );
  }
}
