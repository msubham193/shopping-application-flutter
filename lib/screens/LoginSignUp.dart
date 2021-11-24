// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shopapp/color/colorPallet.dart';
import 'package:shopapp/widget/TextForm.dart';
import 'package:lottie/lottie.dart';

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  _LoginSignUpState createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {
  bool isStretched = false;
  bool isAnimation = false;
  bool isMale = true;
  bool isSignUp = false;
  bool isRemember = false;
  TextEditingController emailController =
      TextEditingController(); ////For get email and pasword from text input
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
      ),
      child: isAnimation
          ? Lottie.asset('assets/welldone.json',
              fit: BoxFit.contain, repeat: true)
          : Scaffold(
              backgroundColor: Palette.backgroundColor,
              body: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello Again !",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        child: Text(
                          "Wellcome back you've been missed!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextForm(context, "Email", emailController, false),
                      SizedBox(height: 10),
                      TextForm(context, "Password", passwordController, true),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Recover Password",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 40)
                        ],
                      ),
                      SizedBox(height: 40),
                      Button(),
                      SizedBox(height: 60),
                      Text(
                        "----- Or continue with -----",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                       SizedBox(height: 60),
                       ButtonChip(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget Button() {
    return InkWell(
      onTap: () async {
        setState(() {
          isStretched = !isStretched;
        });
        await Future.delayed(Duration(milliseconds: 3000));
        setState(() {
          isAnimation = true;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 170,
        height: 55,
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          borderRadius: BorderRadius.circular(15),
          // ignore: prefer_const_constructors
          gradient: LinearGradient(colors: [
            Color(0xfffd746c),
            Color(0xffff9068),
            Color(0xfffd746c),
          ]),
        ),

        // ignore: prefer_const_constructors
        child: Center(
          child: isStretched == true
              ? CircularProgressIndicator()
              : Text("Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  )),
        ),
      ),
    );
  }

  Widget ButtonChip() {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Palette.backgroundColor,
      ),
    


    );
  }
}
