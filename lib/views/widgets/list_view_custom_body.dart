import 'package:flutter/material.dart';

class ListViewCustomBody extends StatelessWidget {
  const ListViewCustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      alignment: Alignment.center,
    );
  }
}
