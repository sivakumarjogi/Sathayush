import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration( color: Colors.blue,
            border: Border.all(width: 5,color: Colors.purple),
        borderRadius: BorderRadius.all(Radius.circular(10))),

      ),
    );
  }
}
