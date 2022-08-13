import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/page/neuPress.dart';
import '/page/neuSwitch.dart';
import '/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkMode = false;
  bool isButtonPressed = false;
  void buttonPressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Neumorphism',
          style: TextStyle(
            color: Colors.grey[850],
            fontWeight: FontWeight.bold,
            wordSpacing: 2,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeuButton(
              height: isButtonPressed ? 100 : 110,
              width: isButtonPressed ? 100 : 110,
              borderRadius: 20,
              isButtonPressed: isButtonPressed,
              icon: Icon(Icons.touch_app_rounded,
                  size: isButtonPressed ? 77 : 80,
                  color: isButtonPressed ? Colors.grey.shade500 : Colors.black),
              onLongTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DarkNeu(),
                ),
              ),
              onTap: buttonPressed,
            ),
            const SizedBox(
              height: 40,
            ),
            AnimatedScale(
              duration: const Duration(milliseconds: 300),
              scale: isButtonPressed ? 1 : 0.9,
              curve: Curves.linearToEaseOut,
              child: isButtonPressed
                  ? Text(
                      'Long Press the button to go to the next page',
                      style: TextStyle(
                        fontSize: 15,
                        color: isButtonPressed
                            ? Colors.grey[850]
                            : Colors.grey[300],
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      'Tap to see press animation',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
            ),
            const SizedBox(
              height: 40,
            ),
            NeuButton(
              height: isButtonPressed ? 100 : 110,
              width: isButtonPressed ? 100 : 110,
              borderRadius: 20,
              isButtonPressed: isButtonPressed,
              icon: Icon(Icons.dark_mode_rounded,
                  size: isButtonPressed ? 77 : 80,
                  color: isButtonPressed ? Colors.grey.shade500 : Colors.black),
              onLongTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NeuSwitch(),
                ),
              ),
              onTap: buttonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
