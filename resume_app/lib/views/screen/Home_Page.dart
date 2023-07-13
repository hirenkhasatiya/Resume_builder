import 'package:flutter/material.dart';
import 'package:resume_app/Utils/rout_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text("Home page"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(Myroutes.resumeWorkspace),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
            ),
        );
    }
}