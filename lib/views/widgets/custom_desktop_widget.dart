import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_test_design/views/widgets/custom_item.dart';
import 'package:new_test_design/views/widgets/list_view_custom_body.dart';

class CustomDektopWidget extends StatelessWidget {
  const CustomDektopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: CustomItem(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ListViewCustomBody(),
          ),
        ),
      ],
    );
  }
}
