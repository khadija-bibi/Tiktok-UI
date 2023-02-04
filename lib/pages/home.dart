import 'package:flutter/material.dart';
import 'package:tiktok_ui/posts/post1.dart';
import 'package:tiktok_ui/posts/post3.dart';

import '../posts/post2.dart';
class  Home extends StatelessWidget {

  final _controller=PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageView(
       controller: _controller,
       scrollDirection: Axis.vertical,
       children: [
         MyPost1(),
       MyPost2(),
       MyPost3(),
       ],
     ),
    );
  }
}
