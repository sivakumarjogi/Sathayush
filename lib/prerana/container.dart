import 'package:flutter/material.dart';

class CustomContainerA extends StatelessWidget {
  const CustomContainerA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height/2,
          width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(width:5,color: Colors.red),color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
