import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconContainer extends StatelessWidget {
  final FaIcon icon;
  final String text;

  const CustomIconContainer({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 18, color: Color(0xff8f8e98)),
        )
      ],
    );
  }
}