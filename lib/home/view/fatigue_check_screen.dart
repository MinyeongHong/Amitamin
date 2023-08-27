import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/common/common.dart';

class FatigueCheckScreen extends ConsumerStatefulWidget {
  const FatigueCheckScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FatigueCheckScreen> createState() => FatigueCheckScreenState();
}

class FatigueCheckScreenState extends ConsumerState<FatigueCheckScreen> {
  double _counter = 0.0;

  @override
  Widget build(BuildContext context) {
    return DefaultMainLayout(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(51.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: CustomColor.white,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              width: 24,
              height: 24,
            ),
          ),
          title: Text(
            '피로도 체크하기',
            style: TextStyle(
                color: CustomColor.black,
                fontSize: CustomText.headLine7.fontSize,
                fontFamily: CustomText.headLine7.fontFamily,
                fontWeight: CustomText.headLine7.fontWeight
            ),
          ),
          centerTitle: true,
        ),
      ),
      child: WillPopScope(
        onWillPop: () async {
          context.pop();
          return false;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}


