import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:tutorial_flutter/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void getDate() async {

    Stopwatch watch = Stopwatch()..start();
    Response response = await get(Uri.https('jsonplaceholder.typicode.com', '/todos/1'));
    print('Response got in ${watch.elapsedMilliseconds} ms');

    print(response.body);

    Map data = jsonDecode(response.body);
    print(data['userId']);
    print(data['title']);

  }

  void setupWorldTime() async{

    WorldTime worldTime = WorldTime(location: 'Berlin', flag: 'albany.jpg', url: 'Europe/Berlin');
    await worldTime.getTime();
    print(worldTime.time);

    // await Future.delayed(Duration(seconds: 3), () {});

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'time': worldTime.time,
      'location': worldTime.location,
      'flag': worldTime.flag
    });

    // setState(() {
    //   time = worldTime.time;
    // });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          )
      ),
    );
  }

}
