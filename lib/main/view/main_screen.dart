import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/home/home.dart';
import 'package:amitamin/analysis/analysis.dart';
import 'package:amitamin/my/my.dart';

part 'main_part_bottom.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends ConsumerState<MainScreen> {
  
  @override
  Widget build(BuildContext context) {
    final bottomIndex = ref.watch(bottomIndexProvider);

    final List<PreferredSizeWidget?> appbar = [
      homeScreenAppBar(
        context: context,
        today: '11월 25일 (금)',
        alarmExist: false,
      ),
      AppBar(),
      AppBar()
    ];

    return DefaultMainLayout(
      appBar: appbar[bottomIndex],
      child: WillPopScope(
        onWillPop: () async {
          _onPressBackButton(ref, bottomIndex);
          return false;
        },
        child: _screen[bottomIndex],
      ),
      bottomNavigationBar: _BottomNavigationBar(ref: ref, index: bottomIndex,),
    );
  }
}

List<Widget> _screen = [
  HomeScreen(),
  AnalysisScreen(),
  MyScreen()
];

void _onPressBackButton(WidgetRef ref, int idx) {
  if(idx != 0) {
    ref.watch(bottomIndexProvider.notifier).setIndex(0);
    return;
  }

  if(Platform.isAndroid) {
    onWillPopClose();
  }
}



