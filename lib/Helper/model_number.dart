import 'package:flutter/cupertino.dart';

class Item {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  const Item(
      {required this.sound,
      required this.enName,
      @required this.image,
      required this.jpName});
}
