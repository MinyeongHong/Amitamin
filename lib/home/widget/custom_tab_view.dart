import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/common/common.dart';

Visibility customTabView({
  required BuildContext context,
  required String type,
  required int index,
  required int currentIndex,
  List<Widget>? items
}) {
  return Visibility(
    visible: index == currentIndex,
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: items ?? [
        const SizedBox(
          height: 108,
        ),
        SvgPicture.asset(
          'assets/icons/home/goal_none.svg',
          width: 36,
          height: 36,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "아직 목표가 없어요!",
          style: TextStyle(
            color: CustomColor.extraDarkGray,
            fontWeight: CustomText.headLine7.fontWeight,
            fontSize: CustomText.headLine7.fontSize,
            fontFamily: CustomText.headLine7.fontFamily,
          ),
        ),
        const SizedBox(
          height: 108,
        ),
      ],
    ),
  );
}