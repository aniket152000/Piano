import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sno){
    final player = AudioCache();
    player.play('note$sno.wav');
  }

  Expanded buildkey({Color color,int soundno}){
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: (){
          playsound(soundno);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color:Colors.red, soundno:1),
              buildkey(color:Colors.blue, soundno:2),
              buildkey(color:Colors.yellow, soundno:3),
              buildkey(color:Colors.green, soundno:4),
              buildkey(color:Colors.pinkAccent, soundno:5),
              buildkey(color:Colors.purple, soundno:6),
              buildkey(color:Colors.blueGrey, soundno:7),
            ],


          ),
        ),
      ),
    );
  }
}



