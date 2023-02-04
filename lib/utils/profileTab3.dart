import 'package:flutter/material.dart';
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
      return Container(color: Colors.pinkAccent,margin: EdgeInsets.all(1),);
    },);
  }
}
