import 'package:flutter_riverpod/flutter_riverpod.dart';

final tabIndexProvider = StateNotifierProvider<ChangeTabIndex, int>((ref) => ChangeTabIndex());

class ChangeTabIndex extends StateNotifier<int> {
  ChangeTabIndex() : super(0);

  void setIndex(int index) => state = index;
}