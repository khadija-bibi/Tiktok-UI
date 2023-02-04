import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/postTemplate.dart';
class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "zebi pro max :)",
      description: "flutter developer",
      comments: "800k",
      likes: "300k",
      shares: "100k",
      userPost: Colors.purple,

    );
  }
}
