import 'package:darklightneumorphism/widgets/button.dart';
import 'package:flutter/material.dart';

class DarkNeu extends StatefulWidget {
  const DarkNeu({Key? key}) : super(key: key);

  @override
  State<DarkNeu> createState() => _DarkNeuState();
}

class _DarkNeuState extends State<DarkNeu> {
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
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      appBar: AppBar(
        title: Text(
          darkMode ? 'Dark' : 'Light',
          style: TextStyle(
            color: darkMode ? Colors.grey[300] : Colors.grey[850],
            fontWeight: FontWeight.bold,
            wordSpacing: 2,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: darkMode ? Colors.grey[300] : Colors.grey[850],
          ),
          onPressed: () {
            setState(
              () {
                Navigator.pop(context);
              },
            );
          },
        ),
        /* actions: [
          IconButton(
            icon: Icon(
              darkMode ? Icons.brightness_2 : Icons.brightness_high_rounded,
              color: darkMode ? Colors.grey[300] : Colors.grey[850],
            ),
            onPressed: () {
              setState(
                () {
                  darkMode = !darkMode;
                },
              );
            },
          ),
        ], */
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: NeuButton(
          onTap: buttonPressed,
          isButtonPressed: isButtonPressed,
          height: isButtonPressed ? 190 : 200,
          width: isButtonPressed ? 190 : 200,
          borderRadius: 50,
          icon: Icon(Icons.favorite,
              size: isButtonPressed ? 86 : 90,
              color: isButtonPressed ? Colors.red[200] : Colors.red),
        ),
      ),
    );
  }
}
