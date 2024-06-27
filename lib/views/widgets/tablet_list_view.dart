import 'package:flutter/material.dart';
import 'package:new_test_design/views/widgets/custom_item.dart';

class TabletListView extends StatelessWidget {
  const TabletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: ListView.builder(
            itemCount: 30,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: AspectRatio(aspectRatio: 1, child: CustomItem()),
              );
            }),
      ),
    );
  }
}
