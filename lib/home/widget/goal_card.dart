import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalCard extends StatelessWidget {
  GoalCard({
    Key? key,
    required this.goalId,
    required this.goalType,
    required this.goalText,
    required this.alarmText,
    required this.achievementFlag,
  }) : super(key: key);

  final String goalId;
  final String goalType;
  final String goalText;
  final String alarmText;
  final bool achievementFlag;

  // 목표 카드 수정하기, 삭제하기 팝업
  final GlobalKey _goalCardManipulationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: goalMap[goalType]?['backgroundColor']
      ),
      height: 94,
      child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    goalMap[goalType]?['title'],
                    style: TextStyle(
                      color: goalMap[goalType]?['titleColor'],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      // color:
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // TODO : 목표 달성 못한 항목만 클릭 이벤트 등록
                        },
                        child: achievementFlag
                            ? SvgPicture.asset(
                          goalMap[goalType]?['checkedIcon'],
                          width: 24,
                          height: 24,
                        )
                            : SvgPicture.asset(
                          goalMap[goalType]?['uncheckedIcon'],
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(width: 2.5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 104.5,
                        child: Text(
                          goalText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: CustomText.headLine7,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    alarmText,
                    style: const TextStyle(
                      color: CustomColor.darkGray,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  _showGoalCardPopup(
                    context,
                    getWidgetPosition(_goalCardManipulationKey).dx,
                    getWidgetPosition(_goalCardManipulationKey).dy,
                    goalId
                  );
                },
                child: SvgPicture.asset(
                  key : _goalCardManipulationKey,
                  'assets/icons/home/more_vert.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          )
      ),
    );
  }
}

void _showGoalCardPopup(BuildContext context, double dx, double dy, String goalId) {
  showMenu<dynamic>(
    context: context,
    // TODO : AppBar 높이만큼 세로길이를 빼줘야 함
    position: RelativeRect.fromLTRB(dx, dy - 51.0, 24.0, 0.0), 
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    constraints: const BoxConstraints(
      maxWidth: 130.0,
      minWidth: 130.0,
    ),
    elevation: 5.0,
    items: [
      PopupMenuItem<String>(
        value: goalId,
        onTap: () {},
        height: 45.0,
        child: Text(
          "수정하기",
          style: TextStyle(
              color: CustomColor.lightBlack,
              fontSize: CustomText.body3.fontSize,
              fontFamily: CustomText.body3.fontFamily,
              fontWeight: CustomText.body3.fontWeight
          ),
        ),
      ),
      const PopupMenuDivider(
        height: 1.0,
      ),
      PopupMenuItem<String>(
        value: goalId,
        onTap: () {},
        height: 45.0,
        child: Text(
          "삭제하기",
          style: TextStyle(
              color: CustomColor.lightBlack,
              fontSize: CustomText.body3.fontSize,
              fontFamily: CustomText.body3.fontFamily,
              fontWeight: CustomText.body3.fontWeight
          ),
        ),
      ),
    ],
  );
}