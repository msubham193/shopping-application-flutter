// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:shopapp/color/colorPallet.dart';
import 'package:shopapp/widget/TextForm.dart';

import 'Home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isStretched = false;
  bool isAnimation = false;
  bool isSignUp = false;
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
          ? Lottie.asset('assets/done2.json', fit: BoxFit.contain, repeat: true)
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
                        "Create Account",
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
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextForm(context, "Name", emailController, false),
                      SizedBox(height: 20),
                      TextForm(context, "Email", emailController, false),
                      SizedBox(height: 20),
                      TextForm(context, "Password", passwordController, true),
                      SizedBox(height: 10),
                      SizedBox(height: 40),
                      Button(),
                      SizedBox(height: 80),
                      Text(
                        "----- Or continue with -----",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonChip('assets/google.svg', 25),
                          SizedBox(width: 50),
                          ButtonChip('assets/phone.svg', 30),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Are you member",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 1.5,
                                fontSize: 15),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignUp = true;
                              });
                            },
                            child: Text(
                              "Sign in now",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
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

        await Future.delayed(Duration(milliseconds: 3000));
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return HomePage();
        }), (route) => false);
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        height: 55,
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          borderRadius: BorderRadius.circular(15),
          // ignore: prefer_const_constructors
          gradient: LinearGradient(colors: [
            Color(0xFFE1372D),
            Color(0xFFFF5403),
            // Color(0xFFE1372D),
          ]),
        ),

        // ignore: prefer_const_constructors
        child: Center(
          child: isStretched == true
              ? CircularProgressIndicator()
              : Text("Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  )),
        ),
      ),
    );
  }

  Widget ButtonChip(String imgPath, double size) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Palette.backgroundColor,
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: Center(
        child: SvgPicture.asset(
          imgPath,
          height: size,
          width: size,
        ),
      ),
    );
  }
}
