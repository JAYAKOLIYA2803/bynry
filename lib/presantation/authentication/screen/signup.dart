import 'package:bynry/presantation/authentication/screen/authentication.dart';
import 'package:bynry/presantation/authentication/widgets/custom_button.dart';
import 'package:bynry/presantation/authentication/widgets/custom_email_textfield.dart';
import 'package:bynry/presantation/authentication/widgets/custom_name_textfield.dart';
import 'package:bynry/presantation/authentication/widgets/custom_password_textfield.dart';
import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  bool passToggle = true;

  final TextEditingController nameController = TextEditingController();
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
                        SizedBox(height: 45),
                        Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Step Towards Sustanaibility',
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 10),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Form(
                      key: _signUpFormKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomNameTextfield(
                              controller: nameController,
                              hintText: 'Enter Your Name'),
                          SizedBox(height: 15),
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
                          SizedBox(height: 55),
                          CustomButton(
                            onTap: () {
                              if (_signUpFormKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AuthenticationScreen()));
                              }
                            },
                            text: 'Sign up',
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
