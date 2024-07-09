import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:max/auth/login.dart';
import 'package:max/widgets/Button_widget.dart';

import '../widgets/textfield_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Register",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 40),
          ),
          SizedBox(
            height: 20,
          ),
          textfieldWidget(
            txt: 'Enter Name',
            ctrl: name,
          ),
          textfieldWidget(
            txt: 'Enter mail',
            ctrl: email,
          ),
          textfieldWidget(
            txt: 'Enter password',
            ctrl: pass,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account!",
                style: GoogleFonts.poppins(color: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(color: Colors.indigo),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          buttonWidget(
            ontap: () {},
          )
        ],
      ),
    );
  }
}
