part of 'main_screen.dart';

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    required this.ref,
    required this.idx,
    Key? key,
  }) : super(key: key);

  final WidgetRef ref;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return BottomCustomBar(
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
    );
  }
}