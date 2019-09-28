// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Column(children: <Widget>[
          BlueBoxes(),
          Icons(),
          Texts(),
        ],
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max, 
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Futura',
            color: Colors.blue,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Futura',
            color: Colors.green,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Futura',
            color: Colors.red,
          ),
        ),
      ],
    ) ;
  } 
}

class Icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(FontAwesomeIcons.gamepad),
        Image.network('https://urlzs.com/RsqCz'),
      ]
    );
  }
}

class BlueBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max, 
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: BlueBox(),),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: BiggerBlueBox(),
        ), 
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: BlueBox(),
        ),
        Spacer(flex: 1),
        SizedBox(
          width: 200,
          height: 200,
          child: BlueBox(),
        ),
        SizedBox(width: 100, height: 50,),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
