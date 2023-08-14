import 'package:flutter/cupertino.dart';
import 'package:amitamin/common/common.dart';

class BottomCustomBar extends StatelessWidget {
  const BottomCustomBar({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: CustomColor.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.gray.withOpacity(0.7),
            offset: const Offset(7, 0)
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }
}