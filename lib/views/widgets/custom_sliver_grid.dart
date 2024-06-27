import 'package:flutter/material.dart';
import 'package:new_test_design/views/widgets/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return const CustomItem();
        });
  }
}
