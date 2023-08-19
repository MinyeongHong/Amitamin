import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container goalCard({
  required BuildContext context,
  required String goalId,
  required String goalType,
  required String goalText,
  required String alarmText,
  required bool achievementFlag
}) {
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
                    onTap: () {},
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
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
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