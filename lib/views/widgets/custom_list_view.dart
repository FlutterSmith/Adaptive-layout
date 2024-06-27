import 'package:flutter/material.dart';
import 'package:new_test_design/views/widgets/list_view_custom_body.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: ListViewCustomBody(),
        );
      },
      itemCount: 100,
    );
  }
}
