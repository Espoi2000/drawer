import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.red,
    );
  }
}
