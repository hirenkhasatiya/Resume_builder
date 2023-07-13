import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class InterestHobbies extends StatefulWidget {
  const InterestHobbies({Key? key}) : super(key: key);

  @override
  State<InterestHobbies> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<InterestHobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Interest / Hobbies"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}