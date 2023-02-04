import 'package:flutter/material.dart';
class HomeButton extends StatelessWidget {
  final  icon;
  final String number;
   HomeButton({this.icon, required this.number});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
        icon,
          SizedBox(height: 8,),
          Text(number),
        ],
      ),
    );
  }
}
