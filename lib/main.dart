import 'package:flutter/material.dart';
import 'package:youtube_cloned/pages/detailed.dart';
import 'package:youtube_cloned/pages/favourites.dart';
import 'package:youtube_cloned/pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
      scrollBehavior: ScrollBehavior(),
    );
  }
}
