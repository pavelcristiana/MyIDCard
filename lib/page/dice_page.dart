//@dart=2.9
import 'package:flutter/material.dart';
import 'package:i_am_rich/widget/navigation_drawer_widget.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //this is going to refer to the number of the die that is going to be displayed on the left
  int leftDiceNumber = 1;
  //this is going to refer to the number of the die that is going to be displayed on the right
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Dicee'),
        ),
        body: SafeArea(
          child: Center(

            child: Row(
              children: [


                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      changeDiceNumber();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                )),
                Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          changeDiceNumber();
                        });
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')),
                ),

              ],

            ),


          ),
        ),
      ),
    );
  }
}
