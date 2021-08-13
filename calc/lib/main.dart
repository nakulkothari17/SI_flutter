import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firstNum;
  int secndNum;
  String textToDisplay = "";
  String res;
  String operatorToPerform;
  void btnCked(String btnval) {
    if (btnval == "C") {
      textToDisplay = "";
      firstNum = 0;
      secndNum = 0;
      res = "";
      operatorToPerform = "";
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "*" ||
        btnval == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operatorToPerform = btnval;
    } else if (btnval == "=") {
      secndNum = int.parse(textToDisplay);
      if (operatorToPerform == "+") {
        res = (firstNum + secndNum).toString();
      }
      if (operatorToPerform == "-") {
        res = (firstNum - secndNum).toString();
      }
      if (operatorToPerform == "*") {
        res = (firstNum * secndNum).toString();
      }
      if (operatorToPerform == "/") {
        res = (firstNum / secndNum).toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  Widget custombutton(String btnVal) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => btnCked(btnVal),
        child: Text(
          "$btnVal",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$textToDisplay",
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                custombutton("7"),
                custombutton("8"),
                custombutton("9"),
                custombutton("+"),
              ],
            ),
            Row(
              children: [
                custombutton("4"),
                custombutton("5"),
                custombutton("6"),
                custombutton("-"),
              ],
            ),
            Row(
              children: [
                custombutton("1"),
                custombutton("2"),
                custombutton("3"),
                custombutton("*"),
              ],
            ),
            Row(
              children: [
                custombutton("C"),
                custombutton("0"),
                custombutton("="),
                custombutton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
