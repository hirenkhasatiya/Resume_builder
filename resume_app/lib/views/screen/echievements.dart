import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Achievements"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}