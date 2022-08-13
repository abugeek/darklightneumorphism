import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  const NeuButton(
      {required this.onTap,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.isButtonPressed,
      this.onLongTap,
      this.icon,
      Key? key})
      : super(key: key);

  final VoidCallback? onTap;
  final VoidCallback? onLongTap;
  final bool darkMode = false;
  final double width;
  final double height;
  final double borderRadius;
  final Icon? icon;
  final bool isButtonPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        width: width,
        height: height,
        child: icon,
        decoration: BoxDecoration(
          color: darkMode ? Colors.grey.shade800 : Colors.grey.shade300,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          border: Border.all(
            color:
                isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300,
          ),
          boxShadow: isButtonPressed
              ? []
              : [
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
    );
  }
}
