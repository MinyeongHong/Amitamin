import 'package:flutter/material.dart';
import 'package:amitamin/common/common.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FatigueContainer extends StatelessWidget {
  const FatigueContainer({
    Key? key,
    required this.fatigueId,
    required this.fatigueScore,
    required this.voidCallback,
  }) : super(key: key);

  final int fatigueId;
  final String fatigueScore;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 77,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: [
              SvgPicture.asset(
                fatigueMap[fatigueScore]!['icon']!,
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 12,),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.vertical,
                children: [
                  fatigueScore != 'none' ? Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      const Text(
                        '오늘의 피로도는 ',
                        style: CustomText.headLine5,
                      ),
                      Text(
                        '$fatigueScore점',
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
                  ) : const Text(
                    '오늘 당신의 피로도는 몇점인가요?',
                    style: CustomText.headLine5,
                  ),
                  const SizedBox(height: 9,),
                  Text(
                    fatigueMap[fatigueScore]!['text']!,
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
    );
  }
}