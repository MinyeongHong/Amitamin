import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalysisPage extends ConsumerStatefulWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AnalysisPage> createState() => AnalysisPageState();
}

class AnalysisPageState extends ConsumerState<AnalysisPage> {
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