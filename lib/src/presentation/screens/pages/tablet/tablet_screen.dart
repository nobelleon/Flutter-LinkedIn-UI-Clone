import 'package:flutter/material.dart';
import 'package:linkedin_ui/src/presentation/screens/pages/tablet/nav_bar_tablet.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            NavBarTablet(),
          ],
        ),
      ),
    );
  }
}
