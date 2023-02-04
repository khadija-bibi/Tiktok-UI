import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
      return Container(color: Colors.purple,margin: EdgeInsets.all(1),);
    },);
  }
}
