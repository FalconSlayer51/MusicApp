import 'dart:ui';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffd822ff),
              Color(0xff0009cd),
              Color(0xff000000),
            ],
          ),
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              alignment: Alignment.center,
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.white10),
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(29),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        child: const Text(
                          'Sign up',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Popins',
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'We are happy to see you here',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height / 25,
                      ),
                      Form(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(
                              fontFamily: 'Popins',
                              fontWeight: FontWeight.w100,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          labelStyle: TextStyle(
                            fontFamily: 'Popins',
                            fontWeight: FontWeight.w100,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontFamily: 'Popins',
                            fontWeight: FontWeight.w100,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Popins',
                            ),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xffd822ff),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
