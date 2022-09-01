import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tukoapp/Helper/Category.dart';
import 'package:tukoapp/screns/Number_page.dart';
import 'package:tukoapp/screns/phrass.dart';

import 'colors_page.dart';
import 'family_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('toku', style: TextStyle(color: Colors.black87, fontSize: 40)),
        backgroundColor: Color.fromARGB(255, 59, 52, 32),
      ),
      body: Column(children: [
        category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Colors.white24),
        category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembersPage();
              }));
            },
            text: 'FamilyMembers',
            color: Colors.brown),
        category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
            text: 'colors',
            color: Colors.deepOrange),
        category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Colors.lightBlue)
      ]),
    );
  }
}
