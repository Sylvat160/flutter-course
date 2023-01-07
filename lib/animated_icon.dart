import 'package:flutter/material.dart';

class FanimatedIcon extends StatefulWidget {
  const FanimatedIcon({super.key});

  @override
  State<FanimatedIcon> createState() => _FanimatedIconState();
}

class _FanimatedIconState extends State<FanimatedIcon> {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController.repeat();
  }

  void

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _iconTapped,
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _animationController,
          size: 100,
        ),
      ),
    ));
  }
}
