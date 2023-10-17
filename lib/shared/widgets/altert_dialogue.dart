import 'package:drawertest/shared/utils/app_border_decoration.dart';
import 'package:flutter/material.dart';

class AlertDialogue extends StatelessWidget {
  const AlertDialogue({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);
  // final Duration appDuration;
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: shadowsApp,
        child: child,
      ),
    );
  }
}
