import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class category extends StatelessWidget {
  category({required this.onTap, required this.text, required this.color});
  String text;
  Color color;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        height: 45,
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: 20),
        ),
      ),
    );
  }
}
