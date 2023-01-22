import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/card_container.dart';
import '../widgets/custom_icon_container.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff2d2e33);
const bottomContainerColor = Color(0xFFEB1555);

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                CardContainer(
                  color: activeCardColor,
                  cardChild: CustomIconContainer(
                    icon: FaIcon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    text: 'MALE',
                  ),
                ),
                CardContainer(
                  color: activeCardColor,
                  cardChild: CustomIconContainer(
                    icon: FaIcon(
                      FontAwesomeIcons.venus,
                      size: 80,
                    ),
                    text: 'FEMALE',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [CardContainer(color: activeCardColor)],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                CardContainer(color: activeCardColor),
                CardContainer(color: activeCardColor)
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}




