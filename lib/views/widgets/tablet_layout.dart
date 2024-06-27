import 'package:flutter/material.dart';
import 'package:new_test_design/views/widgets/custom_list_view.dart';
import 'package:new_test_design/views/widgets/custom_sliver_grid.dart';
import 'package:new_test_design/views/widgets/tablet_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: false,
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          TabletListView(),
          CustomSliverListView(),
        ]);
  }
}
