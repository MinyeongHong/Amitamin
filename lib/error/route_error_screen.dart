import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteErrorScreen extends ConsumerStatefulWidget {
  final String errorMsg;
  const RouteErrorScreen({
    required this.errorMsg,
    Key? key}) : super(key: key);

  @override
  ConsumerState<RouteErrorScreen> createState() => RouteErrorScreenState();
}

class RouteErrorScreenState extends ConsumerState<RouteErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(widget.errorMsg)
            ],
          ),
        ),
      )
    );
  }
}