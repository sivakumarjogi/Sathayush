import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration (color:Colors.red,border: Border.all(width: 5,color: Colors.lime),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),

      ),
    );
  }
}
