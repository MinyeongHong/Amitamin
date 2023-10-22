import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    required this.ref,
    required this.index,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final WidgetRef ref;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BottomCustomBar(
      items: [
        BottomItems(
          icon: SvgPicture.asset(
            'assets/icons/bottom/home_icon_outlined.svg',
            width: 24,
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/bottom/home_icon_filled.svg',
            width: 24,
            height: 24,
          ),
          index: 0,
          currentIndex: index,
          label: '홈',
          onPressed: () {
            ref.watch(bottomIndexProvider.notifier).setIndex(0);
            onTap;
          },
        ),
        BottomItems(
          icon: SvgPicture.asset(
            'assets/icons/bottom/analysis_icon_outlined.svg',
            width: 24,
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/bottom/analysis_icon_filled.svg',
            width: 24,
            height: 24,
          ),
          index: 1,
          currentIndex: index,
          label: '분석',
          onPressed: () {
            ref.watch(bottomIndexProvider.notifier).setIndex(1);
            onTap;
          },
        ),
        BottomItems(
          icon: SvgPicture.asset(
            'assets/icons/bottom/my_icon_outlined.svg',
            width: 24,
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/bottom/my_icon_filled.svg',
            width: 24,
            height: 24,
          ),
          index: 2,
          currentIndex: index,
          label: '마이페이지',
          onPressed: () {
            ref.watch(bottomIndexProvider.notifier).setIndex(2);
            onTap;
          },
        ),
      ],
    );
  }
}