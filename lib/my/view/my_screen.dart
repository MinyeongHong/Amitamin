import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyScreen extends ConsumerStatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MyScreen> createState() => MyScreenState();
}

class MyScreenState extends ConsumerState<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text('MyPage')
              ],
            ),
          ),
        )
    );
  }
}