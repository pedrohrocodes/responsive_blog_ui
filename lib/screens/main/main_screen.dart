import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog_theme/constants.dart';
import 'package:responsive_blog_theme/controllers/menuController.dart';
import 'package:responsive_blog_theme/screens/home/home_screen.dart';

import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: HomeScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
