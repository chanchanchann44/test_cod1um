import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'No5.dart';
import 'No6.dart';
import 'No7.dart';
import 'bloc/person_profile_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Cod1um',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Test Cod1um'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textController = TextEditingController();
  TextEditingController _n1 = TextEditingController();
  TextEditingController _n2 = TextEditingController();
  TextEditingController _n3 = TextEditingController();
  TextEditingController _primeNumbers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                "1. numbers from 1 to 100. But for multiples of three print “Fizz” and for the multiples of five print “Buzz”. For numbers which are multiples of both print ”FizzBuzz” "),
            Center(
                child: ElevatedButton(
                    onPressed: () => no1(), child: Text('No.1'))),
            SizedBox(
              height: 10,
            ),
            Text(
                "2. Write a program that determine whether or not an integer input is a leap year."),
            Container(
              // height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.left,
                        controller: _textController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(4),
                        ],
                        decoration: InputDecoration(
                          hintText: "year",
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (_textController.text.length > 0) {
                          no2(int.parse(_textController.text));
                          _textController.clear();
                        }
                      },
                      child: Text('No.2')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "3. Write a program that produce the following output giving an integer input n"),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      child: TextField(
                        controller: _n1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(2),
                        ],
                        decoration: InputDecoration(
                          hintText: "number",
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (_n1.text.length > 0) {
                          no3_1(int.parse(_n1.text));
                          _n1.clear();
                        }
                      },
                      child: Text('No.3.1')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      child: TextField(
                        controller: _n2,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(2),
                        ],
                        decoration: InputDecoration(
                          hintText: "number",
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (_n2.text.length > 0) {
                          no3_2(int.parse(_n2.text));
                          _n2.clear();
                        }
                      },
                      child: Text('No.3.2')),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      child: TextField(
                        controller: _n3,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(2),
                        ],
                        decoration: InputDecoration(
                          hintText: "number",
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (_n3.text.length > 0) {
                          no3_3(int.parse(_n3.text));
                          _n3.clear();
                        }
                      },
                      child: Text('No.3.3')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "4. Write a program that finds all prime numbers up to n for input n"),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      child: TextField(
                        controller: _primeNumbers,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(2),
                        ],
                        decoration: InputDecoration(
                          hintText: "number",
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (_primeNumbers.text.length > 0) {
                          no4(int.parse(_primeNumbers.text));
                          _primeNumbers.clear();
                        }
                      },
                      child: Text('No.4')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("5. Basic layout"),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => No5())),
                child: Text('No.5')),
            SizedBox(
              height: 10,
            ),
            Text("6. CODIUM Login page"),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => No6())),
                child: Text('No.6')),
            SizedBox(
              height: 10,
            ),
            Text(
                "7. Create a small app that has 2 pages (Person page and Edit Profile page)"),
            ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => PersonProfileBloc(),
                      child: No7(),
                    ),
                  ),
                ),
                child: Text('No.7')),
            // Text(
            //   'You have pushed the button this many times:',
            // ),
          ],
        ),
      ),
    );
  }

  no1() {
    for (var i = 1; i <= 100; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        print("FizzBuzz");
      } else if (i % 3 == 0) {
        print("Fizz");
      } else if (i % 5 == 0) {
        print("Buzz");
      } else {
        print(i);
      }
    }
  }

  no2(int year) {
    print("3_1 : $year");
    bool isLeapYear = year % 400 == 0 || year % 4 == 0 && year % 100 != 0;
    print("$year -> $isLeapYear");
  }

  no3_1(int n) {
    print("3_1 : $n");
    List<String> result = [];

    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= n - i; j++) {
        result.add(" ");
      }
      for (int j = 1; j <= i; j++) {
        result.add("*");
      }
      print(result.join());
      result = [];
    }
  }

  no3_2(int n) {
    print("3_2 : $n");
    List<String> result = [];
    int l = n;
    int r = n;
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= (n + (n - 1)); j++) {
        if (j == l || j == r) {
          result.add("*");
        } else {
          result.add(" ");
        }
      }
      l--;
      r++;
      print(result.join());
      result = [];
    }
  }

  no3_3(int n) {
    print("3_3 : $n");
    List<String> result = [];
    int l = 1;
    int r = n;
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= n; j++) {
        if (j == l || j == r) {
          result.add("*");
        } else {
          result.add(" ");
        }
      }
      l++;
      r--;
      print(result.join());
      result = [];
    }
  }

  no4(int n) {
    print("4 : $n");
    List<String> result = [];
    for (int i = 2; i < n; i++) {
      int flag = 0;
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          flag = 1;
        }
      }
      if (flag == 0) {
        result.add("$i ");
      }
    }
    print("$n -> ${result.join()}");
  }
}
