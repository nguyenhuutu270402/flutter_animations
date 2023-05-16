import 'package:flutter/material.dart';

class AnimatedTranlateWidget extends StatefulWidget {
  const AnimatedTranlateWidget({super.key});

  @override
  State<AnimatedTranlateWidget> createState() => _AnimatedTranlateWidgetState();
}

class _AnimatedTranlateWidgetState extends State<AnimatedTranlateWidget>
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
        return Transform.translate(
          // angle: _animationController.value * 2.0 * math.pi,
          offset: Offset(_animationController.value * 200,
              _animationController.value * 400),
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
