import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';

GestureDetector customTabBar({
  required BuildContext context,
  required String label,
  required int index,
  required int currentIndex,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      color: Colors.transparent,
      width: 30,
      height: 21,
      child: Text(
        label,
        style: TextStyle(
          color: currentIndex == index
              ? CustomColor.black
              : CustomColor.gray,
          fontWeight: currentIndex == index
              ? FontWeight.bold
              : FontWeight.normal,
          fontSize: 15,
        ),
      ),
    ),
  );
}