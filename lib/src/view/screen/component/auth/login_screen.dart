import 'package:flutter/material.dart';
import 'package:ice/src/const/InputDeco_design.dart';
import 'package:ice/src/view/screen/component/auth/forgot_pass_screen.dart';
import 'package:ice/src/view/screen/component/auth/register_screen.dart';
import 'package:ice/src/view/screen/component/auth/http_service.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ice/src/view/screen/dash_board_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();

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
                  CircleAvatar(
                    radius: 70,
                    child: Image.asset("assets/images/logo.png"),
                  ),

                  SizedBox(height: 15,),

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
                        decoration:buildInputDecoration(Icons.lock,"Enter your password"),
                        validator: (value){
                          if(value!.isEmpty)
                          {
                            return 'Password cannot be empty';
                          }
                          //if(!RegExp("^[0-9]").hasMatch(value)) {
                          //  return 'Please enter a correct password';
                          }
                         // return null;
                       // },

                      ),
                    ),

                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () async {
                          if(_formkey.currentState!.validate())
                          {
                            print(password);
                            print(phone);
                            await HttpService.login(phone, password, context);

                            return;
                          }else{
                            print("UnSuccessfull");
                          }

                        },
                        child: Text("Login"),),),

                    SizedBox(
                      width: 300,
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()));
                              },
                              child: Text('Register!')),

                          Spacer(),

                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgotPassScreen()));
                              },
                              child: Text('Forgot Password?')),
                        ],
                      ),
                    ),

                ],
                ),
              ),
            )
        )
    );
  }
}
