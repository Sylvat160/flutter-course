import 'package:flutter/material.dart';

class FanimatedIcon extends StatefulWidget {
  const FanimatedIcon({super.key});

  @override
  State<FanimatedIcon> createState() => _FanimatedIconState();
}

class _FanimatedIconState extends State<FanimatedIcon> with TickerProviderStateMixin {
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
  bool played = false;
  void _iconTapped(){
    if(played == false){
      _animationController.forward();
      played = true;
    }else {
      _animationController.reverse();
      played = false;
    }
  }

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
