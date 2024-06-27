import 'package:flutter/material.dart';
import 'package:new_test_design/views/models/drawer_icon_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerIconModel});

  final DrawerIconModel drawerIconModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerIconModel.icon,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerIconModel.title,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
