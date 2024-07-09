import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String img;

  const SliderWidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 800,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        img,
        height: 250,
        width: 600,
        fit: BoxFit.fill,
      ),
    );
  }
}
