import 'package:didan_pos/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRouter.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Welcome !!! $name',
                  
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your user name ",
                          labelText: "User name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'uername is requierd !';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your Password ",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'password is requierd !';
                          } else if (value.length < 6) {
                            return 'password length minium 6 char!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 50,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepPurple),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
