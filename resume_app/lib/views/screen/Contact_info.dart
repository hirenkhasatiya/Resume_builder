import 'package:flutter/material.dart';
import 'package:resume_app/views/components/my_back_button.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  int currentIndex=0;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool obscure = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
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
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            labelText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                              size: 25,
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    nameController.clear();
                                  });
                                },
                                icon: Icon(
                                  Icons.clear
                                ),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            labelText: "Email",
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 25,
                            ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      emailController.clear();
                                    });
                                  },
                                  icon: Icon(
                                      Icons.clear
                                  ),
                                ),
                              ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
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
                          controller: numberController,
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
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      numberController.clear();
                                    });
                                  },
                                  icon: Icon(
                                      Icons.clear
                                  ),
                                ),
                              ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          validator: (val){
                            if(val!.isEmpty)
                              {
                                return "Please Enter your Password";
                              }
                            else
                              {
                                return null;
                              }
                          },
                          controller: PasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          obscureText: obscure,
                          decoration: InputDecoration(
                            hintText: "Enter Your Password",
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 25,
                            ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      obscure=!obscure;
                                    });
                                  },
                                  icon: Icon(
                                      obscure ? Icons.visibility : Icons.visibility_off,
                                  ),
                                ),
                              ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){
                              setState(() {
                                bool validated = formKey.currentState!.validate();
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
              ],
            ),
          ),
        ],
      ),
        );
    }
}