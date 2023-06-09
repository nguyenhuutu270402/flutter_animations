import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatingWidget extends StatefulWidget {
  @override
  _RotatingWidgetState createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget>
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
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blue, Colors.yellow],
              ),
            ),
          ),
        );
      },
    );
  }
}
