import 'package:flutter/material.dart';

class No5 extends StatelessWidget {
  const No5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Codium Test"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Color(0xff438593),
                    child: Text(
                      'LOGO',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Color(0xff88454a),
                      child: Text(
                        'TOP MENU',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  flex: 5,
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      height: double.maxFinite,
                      color: Color(0xff0d273f),
                      child: Text(
                        'LEFT MENU',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: double.maxFinite,
                            color: Color(0xff464646),
                            child: Text(
                              'HEADER',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  alignment: Alignment.center,
                                  height: double.maxFinite,
                                  color: Color(0xff7893aa),
                                  child: Text(
                                    'CONTENT',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: double.maxFinite,
                                    color: Color(0xff8d8d8d),
                                    child: Text(
                                      'DETAIL',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    flex: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
