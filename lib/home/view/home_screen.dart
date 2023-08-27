import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/common/common.dart';
import 'package:amitamin/home/home.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(tabIndexProvider);

    return DefaultMainLayout(
      appBar: homeScreenAppBar(
        today: '11월 25일 (금)',
        alarmExist: false,
      ),
      backgroundColor: CustomColor.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              FatigueContainer(
                fatigueId: 1,
                fatigueScore: 'none',
                voidCallback: () {
                  context.go('/main/home/fatigueCheck');
                },
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
                          GestureDetector(
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
                        width: MediaQuery.of(context).size.width,
                        height: 21,
                        child: Stack(
                          children: [
                            Wrap(
                              children: [
                                CustomTabBar(
                                  label: '전체',
                                  index: 0,
                                  currentIndex: tabIndex,
                                  onTap: () {
                                    ref.watch(tabIndexProvider.notifier).setIndex(0);
                                  },
                                ),
                                const SizedBox(width: 16,),
                                CustomTabBar(
                                  label: '신체',
                                  index: 1,
                                  currentIndex: tabIndex,
                                  onTap: () {
                                    ref.watch(tabIndexProvider.notifier).setIndex(1);
                                  },
                                ),
                                const SizedBox(width: 16,),
                                CustomTabBar(
                                  label: '영양',
                                  index: 2,
                                  currentIndex: tabIndex,
                                  onTap: () {
                                    ref.watch(tabIndexProvider.notifier).setIndex(2);
                                  },
                                ),
                                const SizedBox(width: 16,),
                                CustomTabBar(
                                  label: '수면',
                                  index: 3,
                                  currentIndex: tabIndex,
                                  onTap: () {
                                    ref.watch(tabIndexProvider.notifier).setIndex(3);
                                  },
                                ),
                                const SizedBox(width: 16,),
                                CustomTabBar(
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
                      Wrap(
                        children: [
                          CustomTabView(
                              type: "",
                              index: 0,
                              currentIndex: tabIndex,
                              items: [
                                GoalCard(
                                    goalId: "1",
                                    goalType: "0001",
                                    goalText: "목표명입니다목표명입니다목표명입니다",
                                    alarmText: "알림 09:00",
                                    achievementFlag: true
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0001",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: false,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0002",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: true,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0002",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: false,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0003",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: true,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0003",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: false,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0004",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: true,
                                ),
                                GoalCard(
                                  goalId: "1",
                                  goalType: "0004",
                                  goalText: "목표명입니다목표명입니다목표명입니다",
                                  alarmText: "알림 09:00",
                                  achievementFlag: false,
                                ),
                              ]
                          ),
                          CustomTabView(
                            type: "",
                            index: 1,
                            currentIndex: tabIndex,
                          ),
                          CustomTabView(
                            type: "",
                            index: 2,
                            currentIndex: tabIndex,
                          ),
                          CustomTabView(
                            type: "",
                            index: 3,
                            currentIndex: tabIndex,
                          ),
                          CustomTabView(
                            type: "",
                            index: 4,
                            currentIndex: tabIndex,
                          ),
                        ],
                      )
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

