import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomIndexProvider = StateNotifierProvider<ChangeBottomIndex, int>((ref) => ChangeBottomIndex());

class ChangeBottomIndex extends StateNotifier<int> {
  ChangeBottomIndex() : super(0);

  void setIndex(int idx) => state = idx;
}