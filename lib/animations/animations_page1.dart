import 'package:flutter/material.dart';
import 'package:my_app/animations/widget/rotation_widget.dart';
import 'package:my_app/animations/widget/scale_widget.dart';
import 'package:my_app/animations/widget/tranlate_widget.dart';

class AnimationPage1 extends StatefulWidget {
  const AnimationPage1({super.key});

  @override
  State<AnimationPage1> createState() => _AnimationPage1State();
}

class _AnimationPage1State extends State<AnimationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RotatingWidget(),
            // AnimatedScaleWidget(),
            // AnimatedTranlateWidget(),
          ],
        ),
      ),
    );
  }
}
