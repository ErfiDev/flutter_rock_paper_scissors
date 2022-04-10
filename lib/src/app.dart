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
                image: AssetImage('images/1.png'),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'START',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Image(
                image: AssetImage('images/3.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
