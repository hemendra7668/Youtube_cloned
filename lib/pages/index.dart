import 'package:flutter/material.dart';
import 'package:youtube_cloned/pages/body.dart';
import 'package:youtube_cloned/pages/favourites.dart';
import 'package:youtube_cloned/pages/profile.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> page = [Body(), Myfavourite(), Profile()];
  // ignore: non_constant_identifier_names
  var selected_index = 0;
  bottomtap(ind) {
    setState(() {
      selected_index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page.elementAt(selected_index),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favoutites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        onTap: bottomtap,
        currentIndex: selected_index,
      ),
    );
  }
}
