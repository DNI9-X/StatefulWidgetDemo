import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.lightBlueAccent,
          brightness: Brightness.light),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: bodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: changeText,
        child: Icon(Icons.done),
      ),
    );
  }

  String txt = "Hello Flutter"; // variable to change
  void changeText() {
    setState(() {
      if(txt.startsWith('H'))
        txt = "This is demo of StatefulWidget";
      else
        txt = "Hello Flutter";
    });
  }

  Widget bodyWidget() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              txt,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
