import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreenBackground extends StatefulWidget {
  const HomeScreenBackground({super.key});

  @override
  State<HomeScreenBackground> createState() => _HomeScreenBackgroundState();
}

class _HomeScreenBackgroundState extends State<HomeScreenBackground> {
  int _currentImageIndex = 0;
  final List<String> _imageUrls = ['assets/P1.webp', 'assets/P2.jpg'];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 8), (Timer timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % _imageUrls.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0), // Slide in from the right
            end: Offset.zero,
          ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: FadeTransition(
            opacity: animation,
            child: Container(
              child: child,
            ),
          ),
        );
      },
      child: Container(
        key: ValueKey<int>(_currentImageIndex),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_imageUrls[_currentImageIndex]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
