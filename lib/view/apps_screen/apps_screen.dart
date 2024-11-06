import 'package:flutter/material.dart';
import 'package:play_store/view/global_widgets/tabs_bar_layout.dart';

class AppsScreen extends StatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabsBarLayout(screenName: "Apps",);
  }
}