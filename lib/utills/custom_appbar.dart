import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      title: Text(title,
        style: style,
      ),
    );
  }

  @override
  final Size preferredSize;

  final String title;
  final TextStyle style;
  Color? bgColor;

  CustomAppBar(
    this.title,
    this.style, {
    this.bgColor = Colors.blueGrey,
    super.key,
  }) : preferredSize = Size.fromHeight(50.0);
}
