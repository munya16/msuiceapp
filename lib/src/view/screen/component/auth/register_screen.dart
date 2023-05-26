import 'package:flutter/material.dart';
import 'package:ice/src/const/InputDeco_design.dart';
import 'package:ice/src/view/screen/component/auth/login_screen.dart';
import 'package:ice/src/view/screen/component/auth/http_service.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late String name,surname,age,sex,phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "REGISTER AND ACCESS",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "CHURCH SERVICES",
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 50,right: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Enter your Name"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Name cannot be empty!';
                          }
                          if(!RegExp("^[a-zA-Z]").hasMatch(value)) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 50,right: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Enter your Surname"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Surname cannot be empty!';
                          }
                          if(!RegExp("^[a-zA-Z]").hasMatch(value)) {
                            return 'Please enter a valid surname';
                          }
                          return null;
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 50,right: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Enter your Age"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Age cannot be empty!';
                          }
                          if(!RegExp("^[0-9]").hasMatch(value)) {
                            return 'Please enter age in figures';
                          }
                          return null;
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 50,right: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Enter your Sex"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Sex cannot be empty!';
                          }
                          if(!RegExp("^[a-zA-Z]").hasMatch(value)) {
                            return 'Please enter valid sex';
                          }
                          return null;
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 50,right: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:buildInputDecoration(Icons.phone,"Enter your Phone Number"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Phone number cannot be empty';
                          }
                          if(!RegExp("^[0-9]").hasMatch(value)) {
                            return 'Please enter a valid phone number';
                          }
                          return null;
                        },
                        onSaved: (value){
                          phone = value!;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 50,right: 50),
                      child: TextFormField(
                        obscureText: true,
                        controller: password,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.lock,"Set your password"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Password cannot be empty';
                          }
                          return null;
                        },

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 50,right: 50),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.lock,"Confirm your Password"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Please re-enter password';
                          }
                          print(password.text);

                          print(confirmpassword.text);

                          if(password.text!=confirmpassword.text){
                            return "Passwords do not match";
                          }

                          return null;
                        },

                      ),
                    ),

                    SizedBox(
                      width: 200,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () async {
                                if(_formkey.currentState!.validate())
                                {
                                  await HttpService.register(name,surname,age,sex,phone, password, context);
                                  return;
                                }else{
                                  print("UnSuccessfull");
                                }

                              },
                              child: Text('Register')),

                          Spacer(),

                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text('Cancel')),
                        ],
                      ),
                    ),
                  ],),
              ),
            )
        )
    );
  }
}
