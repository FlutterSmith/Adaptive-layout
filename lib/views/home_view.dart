import 'package:flutter/material.dart';
import 'package:new_test_design/views/custom_drawer.dart';
import 'package:new_test_design/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 932
        ? AppBar(
            leading: GestureDetector(
              onTap: () => scaffoldKey.currentState!.openDrawer(),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          )
        : null;
  }
}
