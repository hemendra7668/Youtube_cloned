import 'package:flutter/material.dart';
import 'package:youtube_cloned/modals/data.dart';
import 'package:http/http.dart' as http;

class Myfavourite extends StatefulWidget {
  const Myfavourite({super.key});

  @override
  State<Myfavourite> createState() => _MyfavouriteState();
}

class _MyfavouriteState extends State<Myfavourite> {
  List<Music>? music;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" My favourites page"),
        centerTitle: true,
      ),
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 171, 227, 234)),
        child: ListView.builder(
          itemCount: 4,
          //  music?.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(music![index].id.toString()),
            );
          },
        ),
      ),
    );
  }
}
