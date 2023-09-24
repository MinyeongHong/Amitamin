import 'package:amitamin/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterBottomNavigationBar extends StatelessWidget {
  const RegisterBottomNavigationBar({
    Key? key,
    this.backDisable = false,
    this.backOnTap,
    this.backText = "이전",
    required this.text,
    this.nextDisable = false,
    this.nextOnTap,
    this.nextText = "다음"
  }) : super(key: key);

  final bool backDisable;
  final VoidCallback? backOnTap;
  final String backText;
  final String text;
  final bool nextDisable;
  final VoidCallback? nextOnTap;
  final String nextText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: const BoxDecoration(
          color: CustomColor.extraLightGray,
      ),
      child: Row(
        children: [
          const SizedBox(width: 16,),
          SizedBox(
            width: 52,
            child: InkWell(
              onTap: backOnTap,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/blue_arrow_back.svg",
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    backText,
                    style: TextStyle(
                      fontFamily: CustomText.body6.fontFamily,
                      fontWeight: CustomText.body6.fontWeight,
                      fontSize: CustomText.body6.fontSize,
                      color: CustomColor.primaryBlue100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Text(
            text,
            style: TextStyle(
              fontFamily: CustomText.body6.fontFamily,
              fontWeight: CustomText.body6.fontWeight,
              fontSize: CustomText.body6.fontSize,
              color: CustomColor.gray,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 52,
            child: InkWell(
              onTap: nextOnTap,
              child: Row(
                children: [
                  Text(
                    nextText,
                    style: TextStyle(
                      fontFamily: CustomText.body6.fontFamily,
                      fontWeight: CustomText.body6.fontWeight,
                      fontSize: CustomText.body6.fontSize,
                      color: CustomColor.primaryBlue100,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/blue_arrow_next.svg",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16,),
        ],
      ),
    );
  }
}