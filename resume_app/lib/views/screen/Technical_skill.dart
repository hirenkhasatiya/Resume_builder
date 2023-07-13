import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class TechnicalSkill extends StatefulWidget {
  const TechnicalSkill({Key? key}) : super(key: key);

  @override
  State<TechnicalSkill> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<TechnicalSkill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Technical Skill"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}