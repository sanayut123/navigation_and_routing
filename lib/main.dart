import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example navigation routing'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text(
              'Next Page',
              style: TextStyle(
                color: Colors.pink[300],
                fontSize: 50.0,
                fontWeight: FontWeight.w800
              ),
            ),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) =>  NextPage()
                )
              );
            }
          ),
        ),
        color: Colors.deepPurple[200],
      ),
    );
  }
}


class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Container(
        color: Colors.red[300],
      ),
    );
  }
}