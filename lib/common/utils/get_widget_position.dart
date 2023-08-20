import 'package:flutter/material.dart';

dynamic getWidgetPosition(GlobalKey key) {
  if (key.currentContext != null) {
    final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    return position;
  }
  return null;
}