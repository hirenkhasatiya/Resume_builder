import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Declaration"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}