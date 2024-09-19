import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_automne_2024/tiroir_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Accueil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  String reponse = "en attente";

  /*void getHttp() async {
    try {
      var response =
      await Dio().get('http://10.0.2.2:8080/test');
      print(response);
      reponse = response.data;
      setState(() {});
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Erreur reseau')));
    }
  }*/



  List<String> ListeTache = [];

  @override
  void initState() {
    for (var i = 0; i < 100; i++) {
      ListeTache.add(i.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const TiroirNav(),
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),


      body: Center(


          child: ListView.builder(
            itemCount: ListeTache.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text('item #${ListeTache[index]}'));
            },
          )),

    );
  }
}
