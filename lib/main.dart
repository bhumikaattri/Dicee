import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.redAccent[400],
      appBar: AppBar(
        title:  Center(
          child: Text('Dicee')),
        backgroundColor: Colors.redAccent[400],
      ) ,
      body: DicePage(), 
   ),
  ),);
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  void changeDiceNo(){
     setState(() {
                  leftDiceNo = Random().nextInt(6)+1; 
                  rightDiceNo = Random().nextInt(6)+1;
                });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: () { 
                changeDiceNo();
               },
              child: Image.asset('assets/images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: () { 
                changeDiceNo();
              },
               child: Image.asset('assets/images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}




  