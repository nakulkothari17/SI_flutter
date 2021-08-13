import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("demo3"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Raised button 1",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Raised button 2",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            )));
  }
}
