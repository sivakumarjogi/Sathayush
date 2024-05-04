import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/utills/custom_appbar.dart';
import 'package:untitled2/utills/custom_listview.dart';

import 'adio2.dart';

class Adio1 extends StatefulWidget {
  const Adio1({super.key});

  @override
  State<Adio1> createState() => _Adio1State();
}

class _Adio1State extends State<Adio1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar("Page Two",TextStyle(color: Colors.pink,fontSize: 50)),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Adio2(),));

          },
          child: Column(
            children: [
              Text("page1"),
              Expanded(child: CustomListView(itemColour: Colors.pink,borderColor: Colors.green,))
            ],
          ),
        ),
      ),
    );
  }
}
