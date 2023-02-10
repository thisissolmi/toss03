import 'package:flutter/material.dart';

class Songgeum extends StatefulWidget {
  const Songgeum({super.key});

  @override
  State<Songgeum> createState() => _SonggeumState();
}

class _SonggeumState extends State<Songgeum> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
        child: Text(
          '어디로 보낼까요?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Image.asset('assets/images/yaho.png'),
    ]);
  }
}
