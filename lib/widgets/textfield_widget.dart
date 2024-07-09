import 'package:flutter/material.dart';

class textfieldWidget extends StatelessWidget {
  String txt;
  IconData? icon;
  TextEditingController? ctrl;

  textfieldWidget({
    required this.txt,
    this.icon,
    required this.ctrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: ctrl,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
            labelText: txt,
            prefixIcon: Icon(icon)),
      ),
    );
  }
}
