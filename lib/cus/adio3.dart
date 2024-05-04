import 'package:flutter/material.dart';
import 'package:untitled2/utills/custom_listview.dart';

import '../utills/custom_appbar.dart';
import 'adio.dart';

class Adio3 extends StatefulWidget {
  const Adio3({super.key});

  @override
  State<Adio3> createState() => _Adio3State();
}

class _Adio3State extends State<Adio3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("hhhhghghg",TextStyle(color: Colors.green,fontSize: 100)),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Adio(),));

          },
          child: Column(
            children: [
              Text("page3"),
              Expanded(child: CustomListView(itemColour:  Colors.green,itemCount: 35,borderColor: Colors.teal,))
            ],
          ),
        ),
      ),
    );
  }
}
