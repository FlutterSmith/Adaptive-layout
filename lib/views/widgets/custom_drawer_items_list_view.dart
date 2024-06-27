import 'package:flutter/material.dart';
import 'package:new_test_design/views/models/drawer_icon_model.dart';
import 'package:new_test_design/views/widgets/custom_drawer_item.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerIconModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(drawerIconModel: items[index]);
        });
  }
}
