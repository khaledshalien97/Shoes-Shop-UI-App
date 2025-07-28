import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ListviewType extends StatelessWidget {
  final String type;
  final bool selected;
  const ListviewType({super.key, required this.type, required this.selected});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3 / 1,
      child: FadeInUp(
        duration: Duration(milliseconds: 1000),
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: selected
              ? BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                )
              : null,
          child: Center(child: Text(type, style: TextStyle(fontSize: 18))),
        ),
      ),
    );
  }
}
