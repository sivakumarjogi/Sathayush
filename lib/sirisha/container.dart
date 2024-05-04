import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width ,

        decoration: BoxDecoration(color: Colors.greenAccent,
    border: Border.all(width: 2,color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(10)),


      ),
    ),
    );
  }
}
