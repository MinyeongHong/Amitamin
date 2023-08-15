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
    final idx = ref.watch(bottomIndexProvider);

    return DefaultMainLayout(
      child: WillPopScope(
        onWillPop: () async {
          // TODO : Route 관리
          return false;
        },
        child: _pages[idx]
      ),
      bottomNavigationBar: _BottomNavigationBar(ref: ref, idx: idx,),
    );
  }
}

List<Widget> _pages = [
  HomePage(),
  AnalysisPage(),
  MyPage()
];



