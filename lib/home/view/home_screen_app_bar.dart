import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/common/common.dart';

PreferredSizeWidget? homeScreenAppBar({
  Key? key,
  required String today,
  required bool alarmExist,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(51.0),
    child: AppBar(
      elevation: 0.0,
      backgroundColor: CustomColor.white,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          today,
          style: CustomText.headLine7.apply(
            color: CustomColor.primaryBlue100,
          ),
        ),
      ),
      centerTitle: false,
      titleSpacing: 0,
      actions: [
        alarmExist
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/home/alarm_exist.svg',
                  width: 24,
                  height: 24,
                ),
              )
            : IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/home/alarm_empty.svg',
                  width: 24,
                  height: 24,
                ),
              ),
        const SizedBox(width: 16)
      ],
    ),
  );
}
