import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: myBackButton(),
            title: Text("Contact Info"),
            centerTitle: true,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
      body: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(

                    child: Container(
                      height: 70,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      currentIndex = 1;
                      BoxDecoration(
                        border: currentIndex==1 ? Border(bottom: BorderSide(color: Colors.yellow,width: 10)):null,
                      );
                    },
                    child: Container(
                      height: 70,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(16),
            child: IndexedStack(
              index: currentIndex,
              children: [
                //contact
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Form(
                    child: Column(
                      children: [
                        Text("Contact"),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
        );
    }
}