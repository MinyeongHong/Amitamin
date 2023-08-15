import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/home/home.dart';
import 'package:amitamin/analysis/analysis.dart';
import 'package:amitamin/my/my.dart';

part 'main_part_bottom.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage> {
  
  @override
  Widget build(BuildContext context) {
    final bottomIndex = ref.watch(bottomIndexProvider);

    return DefaultMainLayout(
      child: WillPopScope(
        onWillPop: () async {
          _onPressBackButton(ref, bottomIndex);
          return false;
        },
        child: _pages[bottomIndex]
      ),
      bottomNavigationBar: _BottomNavigationBar(ref: ref, index: bottomIndex,),
    );
  }
}

List<Widget> _pages = [
  HomePage(),
  AnalysisPage(),
  MyPage()
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



