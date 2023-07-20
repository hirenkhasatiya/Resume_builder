import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app/global/global.dart';
import 'package:resume_app/views/components/my_back_button.dart';
import 'package:image_picker/image_picker.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  int currentIndex=0;

  bool obscure = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: (){
                          setState(() {
                            currentIndex=0;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: currentIndex==0 ? Colors.green : Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
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
                    SizedBox(width: 10,),
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: (){
                          FocusManager.instance.primaryFocus!.unfocus();
                          setState(() {
                            currentIndex=1;
                          });
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: currentIndex==1 ? Colors.green : Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
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
            ),
            Padding(
                padding: EdgeInsets.all(16),
              child: IndexedStack(
                index: currentIndex,
                children: [
                  //contact
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            initialValue: Globals.name,
                            validator: (val){
                              if(val!.isEmpty)
                                {
                                  return "Please Enter Name";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Name",
                              labelText: "Name",
                              prefixIcon: Icon(
                                Icons.person,
                                size: 25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)
                              )
                            ),
                            onSaved: (val){
                              setState(() {
                                Globals.name = val;
                              });
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            initialValue: Globals.email,
                            validator: (val){
                              if(val!.isEmpty)
                                {
                                  return "Please Enter Email";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Email",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                size: 25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)
                              )
                            ),
                            onSaved: (val){
                              setState(() {
                                Globals.email = val;
                              });
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            initialValue: Globals.number?.toString(),
                            validator: (val){
                              if(val!.isEmpty)
                                {
                                  return "Please Enter your number";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            maxLength: 10,
                            decoration: InputDecoration(
                              hintText: "Enter number",
                              labelText: "number",
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)
                              )
                            ),
                            onSaved: (val){
                              setState(() {
                                Globals.number = val as int;
                              });
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            initialValue: Globals.birthdate?.toString(),
                            validator: (val){
                              if(val!.isEmpty)
                                {
                                  return "Please Enter Birthdate";
                                }
                              else
                                {
                                  return null;
                                }
                            },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Enter Birthdate",
                              labelText: "Birthdate",
                              prefixIcon: Icon(
                                Icons.calendar_month,
                                size: 25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)
                              )
                            ),
                            onSaved: (val){
                              setState(() {
                                Globals.number = val as int;
                              });
                            },
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: (){
                                setState(() {
                                  bool validated = formKey.currentState!.validate();

                                  if(validated)
                                    {
                                      formKey.currentState!.save();

                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: const Text("successfully validated"),
                                          backgroundColor: Colors.green,
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(seconds: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          margin: EdgeInsets.all(20),
                                          dismissDirection: DismissDirection.horizontal,
                                          action: SnackBarAction(label: 'Ok', onPressed: (){}),
                                        ),
                                      );
                                    }
                                  else
                                    {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: const Text("Failed validate"),
                                          backgroundColor: Colors.red,
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(seconds: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          margin: EdgeInsets.all(20),
                                          dismissDirection: DismissDirection.horizontal,
                                          action: SnackBarAction(label: 'Ok', onPressed: (){}),
                                        ),
                                      );
                                    }
                                });
                              },
                                  child: const Text("Submit")
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(70),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              foregroundImage: Globals.image != null ? FileImage(Globals.image!) :null,
                              backgroundColor: Colors.black,
                              child: const Text("Add Photo",
                                  style: TextStyle(
                                      color: Colors.white,
                                  ),
                              ),
                              radius: 60,
                            ),
                            FloatingActionButton.small(
                                onPressed: (){
                                  ImagePicker picker = ImagePicker();

                                  XFile? file;

                                  showDialog(
                                      context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Pick Image"),
                                      content: const Text("Choose the Source for Your Image"),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () async {
                                              file = await picker.pickImage(source: ImageSource.camera);

                                              if(file != null)
                                                {
                                                 setState(() {
                                                   Globals.image = File(file!.path);
                                                 });
                                                }
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Camera")
                                        ),
                                        ElevatedButton(
                                            onPressed: () async {
                                              file = await picker.pickImage(source: ImageSource.gallery);

                                              if(file != null)
                                                {
                                                 setState(() {
                                                   Globals.image = File(file!.path);
                                                 });
                                                }
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Gallery")
                                        ),
                                      ],
                                    )
                                  );
                                },
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
          ),
    );
    }
}