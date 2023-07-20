import 'package:flutter/material.dart';
import 'package:resume_app/global/global.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({Key? key}) : super(key: key);

  @override
  State<PersonalDetail> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<PersonalDetail> {

  List languages = ["English","Hindi","Gujarati"];

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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20),
              const Text(
                  "Gender",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              RadioListTile(
                title: const Text("Male"),
                  value: "Male",
                  groupValue: Globals.MaleFemale,
                  onChanged: (val){
                    setState(() {
                      Globals.MaleFemale = val;
                    });
                  },
              ),
              RadioListTile(
                title: const Text("female"),
                  value: "Female",
                  groupValue: Globals.MaleFemale,
                  onChanged: (val){
                    setState(() {
                      Globals.MaleFemale = val;
                    });
                  },
              ),
              SizedBox(height: 20),
              const Text(
                "Language",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                ),
              ),
              ...languages.map(
                      (e) => CheckboxListTile(
                title: Text(e),
                  activeColor: Colors.green,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: Globals.languages.contains(e),
                  onChanged: (val) {
                  setState(() {
                    if(Globals.languages.contains(e))
                    {
                      Globals.languages.remove(e);
                    }
                    else
                    {
                      Globals.languages.add(e);
                    }
                    print(Globals.languages);
                  });
                  }
              )),
            ],
          ),

        ),
      ),
        );
    }
}