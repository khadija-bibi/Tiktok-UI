import 'package:flutter/material.dart';
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
      return Container(color: Colors.purpleAccent,margin: EdgeInsets.all(1),);
    },);
  }
}
