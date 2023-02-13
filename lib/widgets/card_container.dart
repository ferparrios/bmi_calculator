import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Color color;
  final Widget? cardChild;

  // final Function onPress;

  const CardContainer({
    Key? key,
    required this.color,
    this.cardChild, 
    // required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color),
          child: cardChild,
        ),
      ),
    );
  }
}