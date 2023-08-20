import 'package:amitamin/common/common.dart';

const Map<String, Map<String, String>> fatigueMap = {
  'none' : {
    'icon' : 'assets/icons/state/state=none.svg',
    'text' : '아직 피로도 체크를 하지 않았어요'
  },
  '0' : {
    'icon' : 'assets/icons/state/state=0.svg',
    'text' : '0점'
  },
  '1' : {
    'icon' : 'assets/icons/state/state=1.svg',
    'text' : '1점'
  },
  '2' : {
    'icon' : 'assets/icons/state/state=2.svg',
    'text' : '2점'
  },
  '3' : {
    'icon' : 'assets/icons/state/state=3.svg',
    'text' : '3점'
  },
  '4' : {
    'icon' : 'assets/icons/state/state=4.svg',
    'text' : '4점'
  },
  '5' : {
    'icon' : 'assets/icons/state/state=5.svg',
    'text' : '5점'
  },
  '6' : {
    'icon' : 'assets/icons/state/state=6.svg',
    'text' : '6점'
  },
  '7' : {
    'icon' : 'assets/icons/state/state=7.svg',
    'text' : '7점'
  },
  '8' : {
    'icon' : 'assets/icons/state/state=8.svg',
    'text' : '8점'
  },
  '9' : {
    'icon' : 'assets/icons/state/state=9.svg',
    'text' : '9점'
  },
  '10' : {
    'icon' : 'assets/icons/state/state=10.svg',
    'text' : '무리하지 말고 휴식을 취해보세요!'
  },
};

const Map<String, Map<String, dynamic>> goalMap = {
  '0001' : {
    'title' : '신체',
    'titleColor' : CustomColor.physicalRegular,
    'backgroundColor' : CustomColor.physicalExtraLight,
    'checkedIcon' : 'assets/icons/home/body_checked.svg',
    'uncheckedIcon' : 'assets/icons/home/body_unchecked.svg'
  },
  '0002' : {
    'title' : '영양',
    'titleColor' : CustomColor.nutriRegular,
    'backgroundColor' : CustomColor.nutriExtraLight,
    'checkedIcon' : 'assets/icons/home/nutrition_checked.svg',
    'uncheckedIcon' : 'assets/icons/home/nutrition_unchecked.svg'
  },
  '0003' : {
    'title' : '수면',
    'titleColor' : CustomColor.sleepRegular,
    'backgroundColor' : CustomColor.sleepExtraLight,
    'checkedIcon' : 'assets/icons/home/sleep_checked.svg',
    'uncheckedIcon' : 'assets/icons/home/sleep_unchecked.svg'
  },
  '0004' : {
    'title' : '마음',
    'titleColor' : CustomColor.mentalRegular,
    'backgroundColor' : CustomColor.mentalExtraLight,
    'checkedIcon' : 'assets/icons/home/mental_checked.svg',
    'uncheckedIcon' : 'assets/icons/home/mental_unchecked.svg'
  }
};



