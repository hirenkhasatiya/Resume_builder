import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<References> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("References"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}