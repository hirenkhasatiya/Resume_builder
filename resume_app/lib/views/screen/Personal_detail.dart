import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  State<PersonalDetail> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<PersonalDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Personal Detail"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}