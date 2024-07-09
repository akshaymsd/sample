import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  final String img;
  final String txt;

  const ContainerWidget({super.key, required this.img, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
          Text(
            txt,
            style: GoogleFonts.poppins(),
          )
        ],
      ),
    );
  }
}
