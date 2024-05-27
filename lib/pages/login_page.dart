import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool clickedButton = false;

  final _formKey = GlobalKey<FormState>();

  void handleNameUpdate(String value) {
    setState(() {
      name = value;
    });
  }

  void handleMoveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(
        () {
          clickedButton = true;
        },
      );
      await Future.delayed(Duration(milliseconds: 500));
      Navigator.pushNamed(context, AppRouter.homeRoute);
      await Future.delayed(Duration(milliseconds: 500));

      setState(
        () {
          clickedButton = false;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username cannot be empty";
                                }
                                return null;
                              },
                              onChanged: (value) => handleNameUpdate(value),
                              decoration: InputDecoration(
                                  hintText: "UserName",
                                  label: Text("Enter Username")))),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  label: Text("Enter Password"))))
                    ],
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(clickedButton ? 40 : 8),
                child: InkWell(
                  onTap: () => handleMoveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: clickedButton ? 40 : 150,
                    height: 40,
                    alignment: Alignment.center,
                    child: clickedButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                  ),
                ))

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, AppRouter.homeRoute);
            //     },
            //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            //     child: Text("Login"))
          ],
        ),
      )),
    );
  }
}
