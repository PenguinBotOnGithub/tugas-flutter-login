import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              Text(
                "WELCOME BACK",
                style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                    color: ThemeData().primaryColor),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                "assets/login_img.png",
                width: min(496, mediaQuerySize.height / 2.4),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "USERNAME",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26)),
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26)),
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ),
              LayoutBuilder(builder: (context, constraints) {
                var constraintWidth = MediaQuery.of(context).size.width;
                var multiplier = constraintWidth > 600 ? 0.23 : 0.5;
              
                if (constraintWidth > 600) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: constraintWidth * multiplier,
                        height: 45,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26))),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Heheheh"),
                                duration: Duration(milliseconds: 1000),
                              ));
                            },
                            child: const Text("REGISTER")),
                      ),
                      SizedBox(
                        width: constraintWidth * 0.018,
                      ),
                      SizedBox(
                        width: constraintWidth * multiplier,
                        height: 45,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26))),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Heheheh"),
                                duration: Duration(milliseconds: 1000),
                              ));
                            },
                            child: const Text("LOGIN")),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
                        width: constraintWidth,
                        height: 45,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26))),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Heheheh"),
                                duration: Duration(milliseconds: 1000),
                              ));
                            },
                            child: const Text("LOGIN")),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: constraintWidth,
                        height: 45,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26))),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Heheheh"),
                                duration: Duration(milliseconds: 1000),
                              ));
                            },
                            child: const Text("REGISTER")),
                      ),
                    ],
                  );
                }
              }),
              Spacer(flex: 3)
            ],
          ),
        ),
      ),
    );
  }
}
