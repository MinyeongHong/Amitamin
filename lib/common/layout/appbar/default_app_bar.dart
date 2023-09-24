import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/common/common.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
    required this.title,
    this.leadingDisable = false,
    this.leadingOnPressed,
    this.actionDisable = false,
    this.actionOnPressed,
  }) : super(key: key);

  final String title;
  final bool leadingDisable;
  final VoidCallback? leadingOnPressed;
  final bool actionDisable;
  final VoidCallback? actionOnPressed;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(51.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.white,
        leading: !leadingDisable ? IconButton(
          onPressed: leadingOnPressed,
          icon: SvgPicture.asset(
            'assets/icons/arrow_back.svg',
            width: 24,
            height: 24,
          ),
        ) : null,
        title: Text(
          title,
          style: TextStyle(
              color: CustomColor.black,
              fontSize: CustomText.headLine7.fontSize,
              fontFamily: CustomText.headLine7.fontFamily,
              fontWeight: CustomText.headLine7.fontWeight
          ),
        ),
        centerTitle: true,
        actions: !actionDisable ? [
          IconButton(
            onPressed: actionOnPressed,
            icon: SvgPicture.asset(
              'assets/icons/quit.svg',
              width: 24,
              height: 24,
            ),
          ),
        ] : null,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(51.0);
}