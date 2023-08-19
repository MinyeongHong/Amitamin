import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MyPage> createState() => MyPageState();
}

class MyPageState extends ConsumerState<MyPage> {
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