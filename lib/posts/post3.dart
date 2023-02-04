import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/postTemplate.dart';
class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "talal bin afzal",
      description: "best teacher ever\n#programming my love ",
      comments: "100k",
      likes: "120k",
      shares: "50k",
      userPost: Colors.blueGrey,

    );
  }
}
