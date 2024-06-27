import 'package:flutter/material.dart';
import 'package:new_test_design/views/home_view.dart';

void main() {
  runApp(const AdaptiveApp());
}


class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
