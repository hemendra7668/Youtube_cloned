import 'dart:html';

import 'package:flutter/material.dart';
import 'package:youtube_cloned/modals/data.dart';

class Detailed extends StatefulWidget {
  Detailed({Key? key}) : super(key: key);

  @override
  State<Detailed> createState() => _DetailedState();
}

class _DetailedState extends State<Detailed> {
  late final List<Music>? music;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detailed page"),
      ),
      body: Container(),
    );
  }
}
