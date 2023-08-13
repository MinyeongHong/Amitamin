import 'package:amitamin/pages/analysis/analysis.dart';
import 'package:amitamin/pages/home/home.dart';
import 'package:amitamin/pages/my/my.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage> {
  final bottomIndexProvider = StateProvider((ref) => 0);
  final pages = [
    HomePage(),
    AnalysisPage(),
    MyPage()
  ];
  
  @override
  Widget build(BuildContext context) {

    final idx = ref.watch(bottomIndexProvider);

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          // TODO : Route 관리
          return false;
        },
        child: pages[idx]
      ),
      bottomNavigationBar: BottomCustomBar(
        items: [
          BottomItems(
              icon: SvgPicture.asset(
                'lib/common/assests/icon/home_icon_filled.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'lib/common/assests/icon/home_icon_filled.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 0 ? true : false,
              label: '홈',
              onPressed: () {
                ref.read(bottomIndexProvider.notifier).state = 0;
              },
          ),
          BottomItems(
              icon: SvgPicture.asset(
                'lib/common/assests/icon/analysis_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'lib/common/assests/icon/analysis_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 1 ? true : false,
              label: '분석',
              onPressed: () {
                ref.read(bottomIndexProvider.notifier).state = 1;
              },
          ),
          BottomItems(
              icon: SvgPicture.asset(
                'lib/common/assests/icon/my_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'lib/common/assests/icon/my_icon_outlined.svg',
                width: 24,
                height: 24,
              ),
              activeFlag: idx == 2 ? true : false,
              label: '마이페이지',
              onPressed: () {
                ref.read(bottomIndexProvider.notifier).state = 2;
              },
          ),
        ],
      )
    );
  }
}