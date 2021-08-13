import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sample App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "sample App",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Hi Flutter, A paragraph is a self-contained",
                style: TextStyle(
                  fontSize: 40.0,
                ),
                //textAlign: TextAlign.center,
              ),
              FlatButton(
                onPressed: () {},
                child: Text("OK!"),
                splashColor: Colors.blue,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("NOT OK!"),
              ),
              IconButton(
                  icon: Icon(Icons.access_alarm),
                  iconSize: 50.0,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
