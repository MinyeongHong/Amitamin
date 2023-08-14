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
    return Material(
      color: CustomColor.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
        onTap: onPressed,
        child: SizedBox(
          width: 65,
          height: 65,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                activeFlag ?
                activeIcon :
                icon,
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 12,
                      color: activeFlag ?
                      CustomColor.primaryBlue100 :
                      CustomColor.gray
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}