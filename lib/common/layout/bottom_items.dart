import 'package:flutter/cupertino.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomItems extends StatelessWidget {
  const BottomItems({
    Key? key,
    required this.icon,
    required this.activeIcon,
    this.backgroundColor = CustomColor.white,
    required this.activeFlag,
    required this.label,
    required this.onPressed
  }) : super(key: key);

  final SvgPicture icon;
  final SvgPicture activeIcon;
  final Color backgroundColor;
  final bool activeFlag;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Column(
          children: [
            activeFlag ?
            activeIcon :
            icon,
            Text(
              label,
              style: TextStyle(
                  fontSize: 11,
                  color: activeFlag ?
                  CustomColor.primaryBlue100 :
                  CustomColor.gray
              ),
            ),
          ],
        ),
      ),
    );
  }
}