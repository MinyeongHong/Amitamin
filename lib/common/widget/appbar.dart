import 'package:amitamin/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasLeading;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.hasLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return AppBar(
      elevation: 0,
      backgroundColor: CustomColor.white,
      centerTitle: true,
      leadingWidth: 40,
      leading:
      hasLeading? GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SvgPicture.asset(
            'assets/icons/arrow_back.svg',
          ),
        ),
      ) : Container(),
      title: Text(
        title,
        style: CustomText.headLine7.apply(color: CustomColor.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
