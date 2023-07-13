import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Carrier Objective"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        );
    }
}