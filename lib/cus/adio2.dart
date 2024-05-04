import 'package:flutter/material.dart';
import 'package:untitled2/utills/custom_listview.dart';

import '../utills/custom_appbar.dart';
import 'adio3.dart';

class Adio2 extends StatefulWidget {
  const Adio2({super.key});

  @override
  State<Adio2> createState() => _Adio2State();
}

class _Adio2State extends State<Adio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("PAge Three",TextStyle(color: Colors.blue,fontSize: 75)),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Adio3(),));

          },
          child: Column(
            children: [
              Text("page2"),
              Expanded(child: CustomListView(itemColour: Colors. blue,itemCount: 27,borderColor: Colors.yellow,))
            ],
          ),
        ),
      ),
    );
  }
}
