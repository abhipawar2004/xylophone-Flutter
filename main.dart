import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  
  void Sound(int Number){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$Number.wav"),
    );
  }
   Expanded buildKey({ color,  SoundNumber}){
   return  Expanded(
       child: Container(
         color: color,
         child: TextButton(
           onPressed: () {
             Sound(SoundNumber);
           },
           child: Text(""),
         ),
       ),
     );
   }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
        home: SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red,SoundNumber: 1),
            buildKey(color: Colors.green,SoundNumber: 2,),
            buildKey(color: Colors.blue,SoundNumber: 3),
            buildKey(color: Colors.yellow,SoundNumber: 4),
            buildKey(color: Colors.deepOrange,SoundNumber: 5),
            buildKey(color: Colors.brown,SoundNumber: 6),
            buildKey(color: Colors.pinkAccent,SoundNumber: 7),
          ],
        ),
      ),
     ),
    );
  }
}
