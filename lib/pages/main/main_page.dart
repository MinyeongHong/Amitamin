import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/pages/pages.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage> {
  
  @override
  Widget build(BuildContext context) {
    final idx = ref.watch(bottomIndexProvider);

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          // TODO : Route 관리
          return false;
        },
        child: _pages[idx]
      ),
      bottomNavigationBar: BottomCustomBar(
        items: [
          BottomItems(
              icon: SvgPicture.asset(
                'assets/icons/bottom/home_icon_filled.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bottom/home_icon_filled.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 0 ? true : false,
              label: '홈',
              onPressed: () {
                ref.watch(bottomIndexProvider.notifier).setIndex(0);
              },
          ),
          BottomItems(
              icon: SvgPicture.asset(
                'assets/icons/bottom/analysis_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bottom/analysis_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 1 ? true : false,
              label: '분석',
              onPressed: () {
                ref.watch(bottomIndexProvider.notifier).setIndex(1);
              },
          ),
          BottomItems(
              icon: SvgPicture.asset(
                'assets/icons/bottom/my_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bottom/my_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 2 ? true : false,
              label: '마이페이지',
              onPressed: () {
                ref.watch(bottomIndexProvider.notifier).setIndex(2);
              },
          ),
        ],
      )
    );
  }
}

List _pages = [
  HomePage(),
  AnalysisPage(),
  MyPage()
];