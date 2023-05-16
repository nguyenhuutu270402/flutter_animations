import 'dart:ui';

import 'package:flutter/material.dart';

class BoxGlassPage extends StatefulWidget {
  const BoxGlassPage({super.key});

  @override
  State<BoxGlassPage> createState() => _BoxGlassPageState();
}

class _BoxGlassPageState extends State<BoxGlassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade200,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Box Shadow"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/1590549/pexels-photo-1590549.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              fit: BoxFit.cover),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.3),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.white.withOpacity(0.5)
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.white30),
              ),
              alignment: Alignment.center,
              child: Text(
                "Neon Text",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 9,
                    ),
                    Shadow(
                      color: Colors.blue,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
