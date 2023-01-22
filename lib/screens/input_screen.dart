import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/card_container.dart';
import '../widgets/custom_icon_container.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff2d2e33);
const inactivateColor = Color(0xff111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  Color maleCardColor = inactivateColor;
  Color femaleCardColor = inactivateColor;
  // 1 = male, 2 = female
  void updateColor(int gender){
    if (gender == 1) {
      if (maleCardColor == inactivateColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactivateColor;
      }else{
        maleCardColor = inactivateColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactivateColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactivateColor;
      }else{
        femaleCardColor = inactivateColor;
      }
    }
  }

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
              children:  [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: CardContainer(
                      color: maleCardColor,
                      cardChild: const CustomIconContainer(
                        icon: FaIcon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: CardContainer(
                      color: femaleCardColor,
                      cardChild: const CustomIconContainer(
                        icon: FaIcon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        text: 'FEMALE',
                      ),
                    ),
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




