import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tukoapp/Helper/model_number.dart';
import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item item;

  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.white, child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  item.enName,
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                // ignore: non_constant_identifier_names
                try {
                  AudioCache Player =
                      AudioCache(prefix: 'assets/sounds/$itemType/');
                  Player.play(item.sound);
                } catch (ex) {
                  print(ex);
                }
              },
              child: Icon(
                Icons.arrow_right,
                size: 50,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class phrasesItem extends StatelessWidget {
  const phrasesItem({
    Key? key,
    required this.phrase,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item phrase;

  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
