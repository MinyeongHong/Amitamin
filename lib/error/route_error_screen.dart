import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteErrorPage extends ConsumerStatefulWidget {
  final String errorMsg;
  const RouteErrorPage({
    required this.errorMsg,
    Key? key}) : super(key: key);

  @override
  ConsumerState<RouteErrorPage> createState() => RouteErrorPageState();
}

class RouteErrorPageState extends ConsumerState<RouteErrorPage> {
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