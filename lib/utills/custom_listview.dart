import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  final Color itemColour;
  final int itemCount;
  final Color borderColor;

  CustomListView({super.key,required this.itemColour,this.itemCount = 10, this.borderColor = Colors.black});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 5,color: widget.borderColor),
              color: widget.itemColour,
            ),
            child: Center(child: Text("Item Count $index")),
          ),
        );
      },
    );
  }
}
