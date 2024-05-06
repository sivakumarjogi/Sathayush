import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:untitled2/utills/common_strings.dart';
import 'package:untitled2/utills/custom_appbar.dart';
import 'package:untitled2/utills/custom_listview.dart';

import 'adio2.dart';

class Adio1 extends StatefulWidget {
  const Adio1({super.key});

  @override
  State<Adio1> createState() => _Adio1State();
}

class _Adio1State extends State<Adio1> {

  List getDummyList = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/products');
    getDummyList = response.data['products'];
    print(getDummyList);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(
        "Page Two", TextStyle(color: Colors.pink, fontSize: 50)),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Adio2(),));
          },
          child: Column(
            children: [
              Text("page1"),
              // Expanded(
              //   child: SimpleCalculator(
              //     value: 123.45,
              //     hideExpression: true,
              //     onChanged: (key, value, expression) {
              //       /*...*/
              //     },
              //     theme: const CalculatorThemeData(
              //       displayColor: Colors.black,
              //       displayStyle: const TextStyle(fontSize: 80, color: Colors.yellow),
              //     ),
              //   ),
              // ),

              Container(
                  height: 600,
                  child: ListView.builder(
                itemCount: getDummyList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(20)),
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.blueGrey,
                      ),
                      child: Center(child: Row(
                        children: [
                          Image.network("https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"),
                           Container(
                              height: 150,
                              width: 100,
                              child:  const CircleAvatar(backgroundImage: NetworkImage("https://icon-library.com/images/place-icon-png/place-icon-png-11.jpg",scale: 1.0),),),
                          Column(
                            children: [
                              Text("${getDummyList[index]['title']} $index"),
                              Text(
                                  "${getDummyList[index]['description']} $index"),
                              Text("${getDummyList[index]['price']} $index"),
                            ],
                          )
                        ],
                      )),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
