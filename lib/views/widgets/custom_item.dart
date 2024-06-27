import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? const Color(0xffB4B4B4),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      alignment: Alignment.center,
    );
  }
}
