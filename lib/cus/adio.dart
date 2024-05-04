import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/cus/adio1.dart';
import 'package:untitled2/utills/custom_appbar.dart';
import 'package:untitled2/utills/custom_listview.dart';

class Adio extends StatefulWidget {
  const Adio({super.key});

  @override
  State<Adio> createState() => _AdioState();
}
/// hello prerna
class _AdioState extends State<Adio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Page one",const TextStyle(color: Colors.amber,fontSize: 25),bgColor: Colors.green,),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Adio1(),));

          },
          child:  Column(
            children: [
             const Text("page0"),
              Expanded(child: CustomListView(itemColour: Colors.amber,itemCount: 5,borderColor: Colors.cyan,))
            ],
          ),
        ),
      ),);
  }
}
