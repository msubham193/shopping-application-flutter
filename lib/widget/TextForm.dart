// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

Widget TextForm(BuildContext context, String lable,
    TextEditingController controller, bool obsecureText) {
  return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: TextFormField(
            controller: controller,
            obscureText: obsecureText,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: lable == "Email"
                  ? Icon(
                      Icons.email,
                      color: Colors.grey,
                    )
                  : Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
              hintText: lable,
              hintStyle: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(right: 30),
            )),
      ));
}
