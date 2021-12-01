import 'package:flutter/material.dart';
import 'package:flutter_web_bitcoin_exchange/common/responsive.dart';
import 'package:flutter_web_bitcoin_exchange/provider/menu_controller.dart';
import 'package:flutter_web_bitcoin_exchange/screens/side_menu.dart';

import 'dashbord_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
