import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:amitamin/common/common.dart';
import 'package:amitamin/home/home.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(tabIndexProvider);

    return SafeArea(
      child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 51,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Text(
                          '11월 25일 (금)',
                          style: TextStyle(
                            color: CustomColor.primaryBlue100,
                            fontSize: CustomText.headLine7.fontSize,
                            fontWeight: CustomText.headLine7.fontWeight,
                            fontFamily: CustomText.headLine7.fontFamily,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/home/notification.svg',
                            width: 24,
                            height: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 77,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/state/state=none.svg',
                          width: 44,
                          height: 44,
                        ),
                        const SizedBox(width: 12,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '오늘의 피로도는 ',
                                  style: CustomText.headLine5,
                                ),
                                Text(
                                    '10점',
                                  style: TextStyle(
                                    fontFamily: CustomText.headLine5.fontFamily,
                                    fontSize: CustomText.headLine5.fontSize,
                                    fontWeight: CustomText.headLine4.fontWeight,
                                  ),
                                ),
                                const Text(
                                  ' 이네요',
                                  style: CustomText.headLine5,
                                ),
                              ],
                            ),
                            const SizedBox(height: 9,),
                            Text(
                              '무리하지 말고 휴식을 취해보세요!',
                              style: TextStyle(
                                color: CustomColor.gray,
                                fontFamily: CustomText.body6.fontFamily,
                                fontSize: CustomText.body6.fontSize,
                                fontWeight: CustomText.body6.fontWeight,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '목표리스트',
                              style: CustomText.headLine4,
                            ),
                            const Spacer(),
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {},
                              child: SvgPicture.asset(
                                'assets/icons/home/add.svg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 22,),
                        SizedBox(
                          height: 21,
                          child: Row(
                            children: [
                              Wrap(
                                children: [
                                  customTabBar(
                                    context: context,
                                    label: '전체',
                                    index: 0,
                                    currentIndex: tabIndex,
                                    onTap: () {
                                      ref.watch(tabIndexProvider.notifier).setIndex(0);
                                    },
                                  ),
                                  const SizedBox(width: 16,),
                                  customTabBar(
                                    context: context,
                                    label: '신체',
                                    index: 1,
                                    currentIndex: tabIndex,
                                    onTap: () {
                                      ref.watch(tabIndexProvider.notifier).setIndex(1);
                                    },
                                  ),
                                  const SizedBox(width: 16,),
                                  customTabBar(
                                    context: context,
                                    label: '영양',
                                    index: 2,
                                    currentIndex: tabIndex,
                                    onTap: () {
                                      ref.watch(tabIndexProvider.notifier).setIndex(2);
                                    },
                                  ),
                                  const SizedBox(width: 16,),
                                  customTabBar(
                                    context: context,
                                    label: '수면',
                                    index: 3,
                                    currentIndex: tabIndex,
                                    onTap: () {
                                      ref.watch(tabIndexProvider.notifier).setIndex(3);
                                    },
                                  ),
                                  const SizedBox(width: 16,),
                                  customTabBar(
                                    context: context,
                                    label: '마음',
                                    index: 4,
                                    currentIndex: tabIndex,
                                    onTap: () {
                                      ref.watch(tabIndexProvider.notifier).setIndex(4);
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}