import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      routes: <String, WidgetBuilder>{
        '/page1':(BuildContext context)=>Page(), //namePage: 'Page1',color: Colors.red,
        '/page3':(BuildContext context)=>Page(), //namePage: 'Page2',color: Colors.blue,
        '/page2':(BuildContext context)=>Page(), //namePage: 'Page3',color: Colors.green,
      },
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example Routing"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "Go to Page 1",
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.dashed
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context,'/page1');
                }
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "Go to Page 2",
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.dashed
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context,'/page2');
                }
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "Go to Page 3",
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.dashed
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context,'/page3');
                }
              )
            ],
          ),
        ),
      );
  }
}

class Page extends StatelessWidget {
  //Page({@required this.namePage,@required this.color});
  // final String namePage;
  // final Color color;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("namePage"),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}