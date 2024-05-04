import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.width/2,
        width: MediaQuery.of(context).size.height,
        //color: Colors.red,
        decoration: BoxDecoration(
          border: Border.all(width: 5),
           borderRadius: BorderRadius.all(Radius.circular(5)),
color: Colors.orange
        ),
      ),
    );
  }
}
