import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_app/Utils/rout_utils.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  FlutterLogoStyle Mystyle = FlutterLogoStyle.markOnly;

  changePage()
  {
    Future.delayed(Duration(milliseconds: 500), (){
      setState(() {
        Mystyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.of(context).pushReplacementNamed(Myroutes.home);
      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/Images/Profile data.gif",scale: 2),
            ],
          ),
        ),
      ),
    );
  }
}
