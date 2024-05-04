import 'package:flutter/material.dart';
class Customcontainer extends StatelessWidget{
  const Customcontainer({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.cyanAccent,border: Border.all(width: 2,color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(2))),
      ),

    );
  }
}
