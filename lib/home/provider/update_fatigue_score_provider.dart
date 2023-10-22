import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateFatigueScoreProvider = StateNotifierProvider<UpdateFatigueScore, double>((ref) => UpdateFatigueScore());

class UpdateFatigueScore extends StateNotifier<double> {
  UpdateFatigueScore() : super(0.0);

  void setScore(double score) => state = score;
}