import 'package:flutter/services.dart';

DateTime? backButtonPressedTime;

Future<bool> onWillPopClose(){

  DateTime now = DateTime.now();

  if(backButtonPressedTime == null || now.difference(backButtonPressedTime!)
      > const Duration(seconds: 3))
  {

    backButtonPressedTime = now;
    // final msg = "'뒤로'버튼을 한 번 더 누르면 종료됩니다.";

    // Fluttertoast.showToast(msg: msg);
    return Future.value(false);
  }
  SystemNavigator.pop();
  return Future.value(true);
}