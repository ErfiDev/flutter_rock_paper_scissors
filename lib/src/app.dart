import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Text('Hello flutter'),
        ),
      ),
    );
  }
}
