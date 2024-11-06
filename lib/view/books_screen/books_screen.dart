import 'package:flutter/material.dart';
import 'package:play_store/view/global_widgets/tabs_bar_layout.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabsBarLayout(screenName: "Books",);
  }
}