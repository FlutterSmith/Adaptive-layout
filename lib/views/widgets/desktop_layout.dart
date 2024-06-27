import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_test_design/views/custom_drawer.dart';
import 'package:new_test_design/views/widgets/custom_desktop_widget.dart';
import 'package:new_test_design/views/widgets/custom_list_view.dart';
import 'package:new_test_design/views/widgets/tablet_layout.dart';
import 'package:new_test_design/views/widgets/tablet_list_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(
          flex: 3,
          child: TabletLayout(),
        ),
        Expanded(child: CustomDektopWidget()),
      ],
    );
  }
}
