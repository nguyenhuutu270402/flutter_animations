import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/animations/widget/icon_animated.dart';

class AnimationsPage2 extends StatefulWidget {
  const AnimationsPage2({super.key});

  @override
  State<AnimationsPage2> createState() => _AnimationsPage2State();
}

class _AnimationsPage2State extends State<AnimationsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return MyDialog();
                  },
                );
              },
              child: Text("Show dialog"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.transparent,
    //   body: Container(
    //     color: Colors.amberAccent,
    //     child: Text("chiu thi v do"),
    //   ),
    // );
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      elevation: 0.0,
      insetPadding: EdgeInsets.all(0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: RotatingBoxAnimation(),
      ),
    );
  }
}
