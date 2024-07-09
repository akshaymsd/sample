import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:max/auth/Register.dart';
import 'package:max/screens/Home_screen.dart';

import '../widgets/Button_widget.dart';
import '../widgets/textfield_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: GoogleFonts.poppins(fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          textfieldWidget(
            txt: 'Enter email',
            icon: Icons.mail,
            ctrl: email,
          ),
          textfieldWidget(
            txt: 'Enter password',
            icon: Icons.password,
            ctrl: pass,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont have an account?",
                style: GoogleFonts.poppins(color: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ));
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(color: Colors.indigo),
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: buttonWidget(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
