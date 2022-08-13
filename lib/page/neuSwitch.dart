import 'package:flutter/material.dart';

class NeuSwitch extends StatefulWidget {
  const NeuSwitch({Key? key}) : super(key: key);

  @override
  State<NeuSwitch> createState() => _NeuSwitchState();
}

class _NeuSwitchState extends State<NeuSwitch> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
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
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android,
                  size: 80, color: darkMode ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                color: darkMode ? Colors.grey.shade800 : Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: darkMode ? Colors.black54 : Colors.grey.shade500,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: darkMode ? Colors.grey.shade800 : Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 3),
                  child: FlatButton(
                    color: Colors.white,
                    child: Text(
                      'Light',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        darkMode = false;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 3),
                  child: FlatButton(
                    color: Colors.black,
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
