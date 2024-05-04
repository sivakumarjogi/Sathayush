import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/cus/adio1.dart';
import 'package:untitled2/utills/common_strings.dart';
import 'package:untitled2/utills/custom_appbar.dart';
import 'package:untitled2/utills/custom_listview.dart';

class Adio extends StatefulWidget {
  const Adio({super.key});

  @override
  State<Adio> createState() => _AdioState();
}

class _AdioState extends State<Adio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        CommonStrings.appBarName,
        const TextStyle(color: Colors.amber, fontSize: 25),
        bgColor: Colors.green,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Adio1(),
                ));
          },
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: Text(CommonStrings.ok)),
              Text(CommonStrings.buttonName),
              Expanded(
                  child: CustomListView(
                labelName: CommonStrings.itemCount,
                itemColour: Colors.amber,
                itemCount: 5,
                borderColor: Colors.cyan,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
