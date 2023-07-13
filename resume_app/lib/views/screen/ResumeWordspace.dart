import 'package:flutter/material.dart';
import 'package:resume_app/Utils/rout_utils.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class ResumeWorkspace extends StatefulWidget {
  const ResumeWorkspace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkspace> createState() => _ResumeWorkspaceState();
}

class _ResumeWorkspaceState extends State<ResumeWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: myBackButton(),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text("Resume WorkSpace"),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: Myroutes.buildOptions
                    .map(
                      (e) => Card(
                        shadowColor: Colors.black,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset(e['icon'],width: 35,),

                          const SizedBox(
                            width: 20,
                          ),
                          Text(e['title'],
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed:()=>Navigator.of(context).pushNamed(e['name']) ,
                            icon: const Icon(Icons.arrow_forward_ios_outlined),),
                        ],
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
            ),
        );
    }
}