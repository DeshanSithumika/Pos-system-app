import 'package:flutter/material.dart';

class UtilNav {
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
