import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/profileTab1.dart';
import 'package:tiktok_ui/utils/profileTab2.dart';
import 'package:tiktok_ui/utils/profileTab3.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye,color: Colors.black,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu,color: Colors.black,)),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                backgroundImage: AssetImage("assets/person2.png"),
                child: IconButton(
                  alignment: Alignment(8, 10),
                  icon: Icon(Icons.camera_alt, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ),
            Text("@khadija147",
                style: TextStyle(color: Colors.black, fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text("20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                      Text("Following", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text("20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                      Text("Followers", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text("20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                      Text("Likes", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(height: 20,),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Add Friend",
                          style: TextStyle(color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            padding:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                            textStyle:
                                TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black54,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.black54,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            SizedBox(height: 10,),
            Text("bio here",style: TextStyle(color: Colors.black),),
            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined,color: Colors.black),),
              Tab(icon: Icon(Icons.favorite_border,color: Colors.black),),
              Tab(icon: Icon(Icons.lock,color: Colors.black),)
            ]),
            Expanded(child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ))

          ],
        ),
      ),
    );
  }
}
