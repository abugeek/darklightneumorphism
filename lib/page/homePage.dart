import 'package:darklightneumorphism/page/neuPress.dart';
import 'package:darklightneumorphism/page/neuSwitch.dart';
import 'package:darklightneumorphism/widgets/button.dart';
import 'package:flutter/material.dart';

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
          'Dark and Light Neumorphism Example',
          style: TextStyle(
            color: Colors.grey[850],
            fontWeight: FontWeight.bold,
            wordSpacing: 2,
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
              height: 100,
              width: 100,
              borderRadius: 20,
              isButtonPressed: isButtonPressed,
              icon: Icon(Icons.touch_app_rounded,
                  size: 80,
                  color: isButtonPressed ? Colors.grey.shade500 : Colors.black),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DarkNeu(),
                ),
              ),
              onLongTap: buttonPressed,
            ),
            SizedBox(
              height: 40,
            ),
            NeuButton(
              height: isButtonPressed ? 100 : 110,
              width: isButtonPressed ? 100 : 110,
              borderRadius: 20,
              isButtonPressed: isButtonPressed,
              icon: Icon(Icons.dark_mode_rounded,
                  size: 80,
                  color: isButtonPressed ? Colors.grey.shade500 : Colors.black),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NeuSwitch(),
                ),
              ),
              onLongTap: buttonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
