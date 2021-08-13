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
              title: Text("demo4"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      "Simple text",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
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
                  ),
                  FlatButton(onPressed: () {}, child: Text("meme"))
                ],
              ),
            )));
  }
}
