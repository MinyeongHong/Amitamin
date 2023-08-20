import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalysisScreen extends ConsumerStatefulWidget {
  const AnalysisScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AnalysisScreen> createState() => AnalysisScreenState();
}

class AnalysisScreenState extends ConsumerState<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text('AnalysisPage')
              ],
            ),
          ),
        )
    );
  }
}