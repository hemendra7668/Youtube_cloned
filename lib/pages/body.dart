import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_cloned/modals/data.dart';
import 'package:youtube_cloned/modals/services.dart';
import 'package:youtube_cloned/pages/profile.dart';

import 'detailed.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: non_constant_identifier_names
  List<Music>? music;
  var is_load = false;
  @override
  void initState() {
    // TODO: implement initState

    getdata();
  }

  getdata() async {
    music = await Remoteservice().getmusic();
    if (music != null) {
      setState(() {
        is_load = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("yt_clone"),
        centerTitle: true,
        // leading: const Image(image: AssetImage("you.jpeg")),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text("My Account"),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text("Settings"),
                ),
                const PopupMenuItem<int>(
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                // ignore: prefer_const_constructors
                Profile;
              } else if (value == 1) {
              } else if (value == 2) {}
            },
          ),
        ],
      ),
      body: Visibility(
        visible: is_load,
        // ignore: sort_child_properties_last
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: music?.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Detailed()));
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          music![index].id.toString(),
                          style: TextStyle(color: Colors.pink),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 20.0,
                          width: MediaQuery.of(context).size.width * .8,
                          child: Text(
                            music![index].title,
                            style: TextStyle(color: Colors.pink),
                            softWrap: true,
                          ),
                        ),
                        Text(
                          music![index].userId.toString(),
                          style: TextStyle(color: Colors.pink),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        replacement: const Center(child: CircularProgressIndicator()),
      ),

      // children: <Widget>[
      //   Center(
      //     child: Card(
      //         child: Container(
      //       height: MediaQuery.of(context).size.height * 0.5,
      //       width: MediaQuery.of(context).size.width,
      //       decoration: const BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(20.0)),
      //         image: DecorationImage(
      //           image: NetworkImage(
      //               'https://images.pexels.com/photos/7480367/pexels-photo-7480367.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      //         ),
      //       ),
      //     )),
      //   ),
      // ],
    );
  }
}
