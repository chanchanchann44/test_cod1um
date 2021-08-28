import 'package:flutter/material.dart';

import 'AppTheme.dart';

class BoxTheme {
  static var textFieldUserNamePassword = InputDecoration(
    hintStyle: TextStyle(fontSize: 16, color: Colors.white38),
    labelStyle: TextStyle(fontSize: 16, color: Colors.white),
    focusedBorder: userNamePasswordBorderStyle,
    disabledBorder: userNamePasswordEnableBorderStyle,
    enabledBorder: userNamePasswordEnableBorderStyle,
    border: userNamePasswordEnableBorderStyle,
  );
  static var textFieldEditProfile = InputDecoration(
    hintStyle: TextStyle(fontSize: 16, color: AppTheme.fontGrey),
    labelStyle: TextStyle(fontSize: 16, color: AppTheme.fontBlue),
    focusedBorder: borderStyle,
    disabledBorder: enableBorderStyle,
    enabledBorder: enableBorderStyle,
    border: enableBorderStyle,
  );
}

final userNamePasswordEnableBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white38, width: 0.0),
  borderRadius: BorderRadius.circular(10.0),
);
final userNamePasswordBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white, width: 0.0),
  borderRadius: BorderRadius.circular(10.0),
);
final enableBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: AppTheme.fontGrey, width: 0.0),
  borderRadius: BorderRadius.circular(10.0),
);
final borderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: AppTheme.fontBlue, width: 0.0),
  borderRadius: BorderRadius.circular(10.0),
);
