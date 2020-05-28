import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MusicInstrument(),
  );
}

class MusicInstrument extends StatelessWidget {
  AudioCache cache = AudioCache();

  playLocal(int num) async {
    AudioPlayer player = await cache.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone Tunes',
              style: TextStyle(fontSize: 24),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.purple[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(1);
                    },
                  ),
                ),
                Card(
                  color: Colors.indigo[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(2);
                    },
                  ),
                ),
                Card(
                  color: Colors.blue[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(3);
                    },
                  ),
                ),
                Card(
                  color: Colors.green[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(4);
                    },
                  ),
                ),
                Card(
                  color: Colors.yellow[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(5);
                    },
                  ),
                ),
                Card(
                  color: Colors.orange[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(6);
                    },
                  ),
                ),
                Card(
                  color: Colors.red[900],
                  child: FlatButton(
                    child: Container(
                      height: 70,
                    ),
                    onPressed: () {
                      playLocal(7);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
