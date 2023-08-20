import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final int index;
  final int currentIndex;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
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
}