import 'package:flutter/material.dart';

import '../utils/homeButton.dart';
import '../utils/postTemplate.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "khadija slow",
      description: "my first tiktok ever",
      comments: "100k",
      likes: "120k",
      shares: "50k",
      userPost: Colors.cyan,

    );
  }
}
