import 'package:flutter/material.dart';
import 'dart:math' as math;

class IconAnimated extends StatefulWidget {
  @override
  _IconAnimatedState createState() => _IconAnimatedState();
}

class _IconAnimatedState extends State<IconAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(); // The animation will repeat indefinitely

    // For a single rotation instead of continuous rotation, remove "..repeat();"
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationController.value * 2.0 * math.pi,
          child: Image.network(
              "https://www.doigandsmith.co.uk/wp-content/uploads/2020/02/tick-icon-symbol-green-checkmark-isolated-vector-24026516green.png",
              width: 70),
        );
      },
    );
  }
}

class RotatingBoxAnimation extends StatefulWidget {
  @override
  _RotatingBoxAnimationState createState() => _RotatingBoxAnimationState();
}

class _RotatingBoxAnimationState extends State<RotatingBoxAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat();

    _animation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 20.0, end: -20.0),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -20.0, end: 20.0),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 20.0, end: -20.0),
        weight: 2.0,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -20.0, end: 20.0),
        weight: 2.0,
      ),
    ]).animate(_animationController);

    _scaleAnimation = Tween(begin: 1.0, end: 2.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Transform.rotate(
            // alignment: Alignment.bottomCenter,
            angle: _animation.value *
                3.14159 /
                180.0, // Convert degrees to radians
            child: Container(
              width: 50,
              height: 100,
              // color: Colors.blue,
              child: Image.network(
                  "https://www.doigandsmith.co.uk/wp-content/uploads/2020/02/tick-icon-symbol-green-checkmark-isolated-vector-24026516green.png",
                  width: 70),
            ),
          ),
        );
      },
    );
  }
}

// Usage:
// RotatingBoxAnimation() // Use this widget in your app's UI hierarchy
