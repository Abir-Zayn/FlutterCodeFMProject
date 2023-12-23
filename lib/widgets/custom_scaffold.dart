import 'package:flutter/material.dart';

class customScaffold extends StatelessWidget {
  const customScaffold({super.key, this.child});

  //creating an custom widget which may have different
  //types of widget based on requirement. Works like function Parameter.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        //Removing drop-down shadow
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          //adding images in bg
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.0), // Adjust opacity here
          ),
          Image.asset(
            'assets/images/appbg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(child: child!),
        ],
      ),
    );
  }
}
