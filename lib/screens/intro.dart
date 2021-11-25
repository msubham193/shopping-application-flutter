// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shopapp/color/colorPallet.dart';
import 'package:shopapp/screens/Login.dart';
import 'package:shopapp/screens/Signup.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Palette.backgroundColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.network(
                  'https://image.freepik.com/free-photo/fun-3d-cartoon-teenage-boy-shopping_183364-81186.jpg',
                  width: MediaQuery.of(context).size.width - 40,
                ),
              ),
              SizedBox(height: 60),
              Container(
                width: MediaQuery.of(context).size.width - 70,
                child: Text("Discover various Fashion item Here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                child: Text(
                    "Explore all the fashion item and accesories based on your interest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                        color: Colors.black54)),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonChip("Register"),
                  SizedBox(width: 30),
                  ButtonChip("Login")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ButtonChip(String lable) {
    return InkWell(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    lable == 'Register' ? SignUp() : Login()),
            (route) => false);
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Palette.backgroundColor,
          border: Border.all(color: Palette.textColor2, width: 2),
        ),
        child: Center(
          child: Text(
            lable,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
