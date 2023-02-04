import 'package:flutter/material.dart';

import 'homeButton.dart';
class PostTemplate extends StatelessWidget {
  final String userName;
  final String description;
  final String likes;
  final String comments;
  final String shares;
  final  userPost;

   PostTemplate({required this.userName,
     required this.description,
     required this.likes,
     required this.comments,
     required this.shares,
     required this.userPost,
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: userPost,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(userName),
                  SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text:"#"+ description),

                      ]))
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HomeButton(icon: Icon(Icons.favorite), number: likes),
                HomeButton(icon: Icon(Icons.comment), number: comments),
                HomeButton(icon: Icon(Icons.share), number: shares),
              ],
            ),
          )
        ],
      ),
    );
  }
}
