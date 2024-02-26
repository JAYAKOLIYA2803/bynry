import 'package:bynry/presantation/authentication/screen/forgotpassword.dart';
import 'package:bynry/presantation/authentication/screen/signup.dart';
import 'package:bynry/presantation/authentication/widgets/custom-divider.dart';
import 'package:bynry/presantation/authentication/widgets/custom_button.dart';
import 'package:bynry/presantation/authentication/widgets/custom_email_textfield.dart';
import 'package:bynry/presantation/authentication/widgets/custom_password_textfield.dart';
import 'package:bynry/global%20variables/global_variables.dart';
import 'package:bynry/presantation/home/screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  bool passToggle = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.primaryColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 30),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Welocme Back!',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          'Log into your account',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                  ),
                ],
              ),
            ),
            //
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 200),
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Form(
                      key: _signInFormKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomEmailTextField(
                            controller: emailController,
                            hintText: 'Enter the Email ID',
                          ),
                          SizedBox(height: 15),
                          CustomPasswordTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            passToggle: passToggle,
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            icon: Icon(passToggle
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordScreen()));
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(fontSize: 15),
                                  ))
                            ],
                          ),
                          SizedBox(height: 5),
                          CustomButton(
                              onTap: () {
                                if (_signInFormKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                  Fluttertoast.showToast(
                                      msg: "Login Successfully",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.deepPurple,
                                      textColor: Colors.white,
                                      fontSize: 12);
                                }
                              },
                              text: 'LOGIN'),
                          SizedBox(height: 30),
                          CustomDivider(),
                          SizedBox(height: 10),
                          Container(
                            height: 60,
                            width: double.infinity,
                            child: SignInButton(
                              Buttons.Google,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                                Fluttertoast.showToast(
                                    msg: "Login Successfully",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.deepPurple,
                                    textColor: Colors.white,
                                    fontSize: 12);
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            height: 60,
                            width: double.infinity,
                            child: SignInButton(
                              Buttons.FacebookNew,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                                Fluttertoast.showToast(
                                    msg: "Login Successfully",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.deepPurple,
                                    textColor: Colors.white,
                                    fontSize: 12);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Don\'t have an Account?',
                          style: TextStyle(fontSize: 15)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text('Sign Up', style: TextStyle(fontSize: 15)),
                      )
                    ],
                  ),
                  // Expanded(child: Container())
                ],
              ),
            ),
          ],
        ));
  }
}
