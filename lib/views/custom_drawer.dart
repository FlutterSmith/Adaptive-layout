import 'package:flutter/material.dart';
import 'package:new_test_design/views/models/drawer_icon_model.dart';
import 'package:new_test_design/views/widgets/custom_drawer_item.dart';
import 'package:new_test_design/views/widgets/custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerIconModel> items = [
    DrawerIconModel(
      title: 'D A S H B O A R D',
      icon: Icons.home,
    ),
    DrawerIconModel(
      title: 'S E T T I N G S  ',
      icon: Icons.settings,
    ),
    DrawerIconModel(
      title: 'A B O U T        ',
      icon: Icons.info,
    ),
    DrawerIconModel(
      title: 'L O G O U T       ',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      elevation: 0.0,
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomDrawerItemsListView(
            items: items,
          ),
        ],
      ),
    );
  }
}
