import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Coin Flick',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'PlayfairDisplay',
              color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: coinApp(),
    ),
  ));
}

class coinApp extends StatefulWidget {
  const coinApp({Key? key}) : super(key: key);

  @override
  State<coinApp> createState() => _coinAppState();
}

class _coinAppState extends State<coinApp> {
  int coinNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              coinNumber = Random().nextInt(2) + 1;
            });
          },
          child: Image.asset('images/coin$coinNumber.png'),
        )),
      ],
    );
  }
}
