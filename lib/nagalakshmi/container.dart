import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(width: 5,color: Colors.pink)),
      ),
    );
  }
}

