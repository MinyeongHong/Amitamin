import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';

Container tabViewGoalCard({
  required BuildContext context,
  required String goalType,
  required String goalText,
  required String alrimText,
  List<Widget>? items
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 94,
    child: Padding(
      padding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
      child: Text(""),
    ),
  );
}