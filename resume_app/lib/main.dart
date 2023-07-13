import 'package:flutter/material.dart';
import 'package:resume_app/Utils/rout_utils.dart';
import 'package:resume_app/views/screen/Carrier_objective.dart';
import 'package:resume_app/views/screen/Contact_info.dart';
import 'package:resume_app/views/screen/Education.dart';
import 'package:resume_app/views/screen/Home_Page.dart';
import 'package:resume_app/views/screen/Personal_detail.dart';
import 'package:resume_app/views/screen/ResumeWordspace.dart';
import 'package:resume_app/views/screen/Splash_screen.dart';
import 'package:resume_app/views/screen/Technical_skill.dart';
import 'package:resume_app/views/screen/declaration.dart';
import 'package:resume_app/views/screen/echievements.dart';
import 'package:resume_app/views/screen/experience.dart';
import 'package:resume_app/views/screen/interest.dart';
import 'package:resume_app/views/screen/projects.dart';
import 'package:resume_app/views/screen/references.dart';

void main(){
  runApp(
    const MyAPP(),
  );
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: Myroutes.splashScreen,
        routes: {
          Myroutes.home:(context) => const HomePage(),
          Myroutes.splashScreen:(context)=>const Splash_screen(),
          Myroutes.resumeWorkspace:(context)=>const ResumeWorkspace(),
          Myroutes.buildOptions[0]['name']:(context)=>const ContactInfo(),
          Myroutes.buildOptions[1]['name']:(context)=>const CarrierObjective(),
          Myroutes.buildOptions[2]['name']:(context)=>const PersonalDetail(),
          Myroutes.buildOptions[3]['name']:(context)=>const EducationPage(),
          Myroutes.buildOptions[4]['name']:(context)=>const Experience(),
          Myroutes.buildOptions[5]['name']:(context)=>const TechnicalSkill(),
          Myroutes.buildOptions[6]['name']:(context)=>const InterestHobbies(),
          Myroutes.buildOptions[7]['name']:(context)=>const Projects(),
          Myroutes.buildOptions[8]['name']:(context)=>const Achievements(),
          Myroutes.buildOptions[9]['name']:(context)=>const References(),
          Myroutes.buildOptions[10]['name']:(context)=>const Declaration(),
        },
        );
    }
}