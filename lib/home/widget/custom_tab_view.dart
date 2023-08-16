import 'package:flutter/material.dart';
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
    child: Column(
      children: items ?? [
        const SizedBox(
          height: 108,
        ),
        // TODO : 그림파일 추가
        const SizedBox(
          height: 12,
        ),
        Text(
          "아직 목표가 없어요!",
          style: TextStyle(
            color: CustomColor.extraDarkGray,
            fontWeight: CustomText.headLine5.fontWeight,
            fontSize: CustomText.headLine5.fontSize,
            fontFamily: CustomText.headLine5.fontFamily,
          ),
        ),
        const SizedBox(
          height: 108,
        ),
      ],
    ),
  );
}