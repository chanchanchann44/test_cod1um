import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'configs/BoxTheme.dart';

class No6 extends StatefulWidget {
  const No6({Key key}) : super(key: key);

  @override
  _No6State createState() => _No6State();
}

class _No6State extends State<No6> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscurePwd = true;

  final enableBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white38, width: 0.0),
    borderRadius: BorderRadius.circular(10.0),
  );
  final borderStyle = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 0.0),
    borderRadius: BorderRadius.circular(10.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/codium_background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text("Login Page"),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/codium_logo.png"),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        decoration: BoxTheme.textFieldUserNamePassword.copyWith(
                          hintText: "Username",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        controller: _userNameController,
                        autofocus: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        obscureText: _obscurePwd,
                        decoration: BoxTheme.textFieldUserNamePassword.copyWith(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              //change visibility
                              setState(() {
                                _obscurePwd = !_obscurePwd;
                              });
                            },
                            child: Icon(
                              !_obscurePwd
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 20,
                            color: Colors.white,
                          ),
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.white38),
                          labelStyle:
                              TextStyle(fontSize: 16, color: Colors.white),
                          hintText: "Password",
                        ),
                        controller: _passwordController,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              elevation: MaterialStateProperty.all(0.0),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff7D86A2),
                                    width: 1,
                                  ),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              _checkLogin();
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _checkLogin() {
    if (_userNameController.text == "CODIUM" &&
        _passwordController.text == "CODIUM") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/codium_background.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    title: Text("Login Page"),
                  ),
                  body: Center(
                    child: Text(
                      "You are successfully logged in",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text("Failed"),
            content: Text("username or password is incorrect"),
            actions: [
              CupertinoDialogAction(
                child: Text("Ok"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        },
      );
    }
  }
}
