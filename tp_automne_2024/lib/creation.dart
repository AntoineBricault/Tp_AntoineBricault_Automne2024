import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_automne_2024/main.dart';
import 'package:tp_automne_2024/transfert.dart';

import 'lib_http.dart';

class creation extends StatefulWidget {
  const creation({super.key});

  @override
  State<creation> createState() => _creationState();
}

class _creationState extends State<creation> {
  DateTime selectedDate = DateTime.now();

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
                  border: OutlineInputBorder(),
                  hintText: "Nom de la tache"
              ),
            ),
            Text("${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
            ElevatedButton(
                onPressed: () async{
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if(dateTime != null){
                    setState(() {
                      selectedDate = dateTime;
                    });
                  }
                },
                child: const Text("Choisir une date"))
,
            OutlinedButton(
                onPressed: () async {

                  try {
                    AddTaskRequest req = AddTaskRequest();
                    req.name = "tache2";
                    req.deadline = selectedDate;
                    var reponse = await addTask(req);
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
                child: const Text("Ajouter la tâche"))


          ],
        ),
      ),
    );
  }
}
