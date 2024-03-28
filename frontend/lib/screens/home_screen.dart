import 'package:flutter/material.dart';
import 'package:frontend/widgets/blur_effect.dart';
import 'package:frontend/widgets/home_screen_background.dart';

import '../widgets/home_screen_content.dart';
import '../widgets/summarise_buton.dart';
import '../widgets/customised_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeScreenBackground(),
          BlurEffect(),
          Center(
            child: Column(
              children: [
                CustomisedAppBar(),
                HomeScreenContent(),
                SummariseButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
