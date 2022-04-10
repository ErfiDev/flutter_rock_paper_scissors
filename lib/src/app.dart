import 'dart:math';

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  List<String> files = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
  ];
  String one = 'images/1.png';
  String two = 'images/1.png';

  _shuffle() {
    var rnd = Random();
    var first = rnd.nextInt(files.length);
    var second = rnd.nextInt(files.length);

    setState(() {
      one = files[first];
      two = files[second];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rock-Paper-Scissors'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: double.infinity),
              Image(
                image: AssetImage(one),
              ),
              TextButton(
                onPressed: _shuffle,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'START',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Image(
                image: AssetImage(two),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
