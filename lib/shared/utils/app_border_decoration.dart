import 'package:flutter/material.dart';

final shadowsApp = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: const Color(0xffF5F5F5),
  boxShadow: const [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.1),
      blurRadius: 4,
      spreadRadius: 1,
      offset: Offset(4, 4),
    ),
  ],
);
