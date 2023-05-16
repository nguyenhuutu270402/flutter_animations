import 'package:flutter/material.dart';

class BoxShadowPage extends StatefulWidget {
  const BoxShadowPage({super.key});

  @override
  State<BoxShadowPage> createState() => _BoxShadowPageState();
}

class _BoxShadowPageState extends State<BoxShadowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Box Shadow"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                offset: Offset(-28, -28),
                color: Colors.grey,
              ),
              BoxShadow(
                blurRadius: 30,
                offset: Offset(28, 28),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
