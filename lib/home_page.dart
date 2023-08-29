import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> profileImages = [
    "lib/images/1.jpg",
    "lib/images/2.jpg",
    "lib/images/3.jpg",
    "lib/images/4.jpg",
    "lib/images/5.jpg",
    "lib/images/6.jpg",
    "lib/images/7.jpg",
    "lib/images/8.jpg",
  ];
  List<String> posts = [
    "lib/images/1.jpg",
    "lib/images/2.jpg",
    "lib/images/3.jpg",
    "lib/images/4.jpg",
    "lib/images/5.jpg",
    "lib/images/post6.jpg",
    "lib/images/7.jpg",
    "lib/images/8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "lib/images/ig.png",
          height: 50,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    8,
                    (index) => Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  "lib/images/story",
                                ),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage: AssetImage(
                                    profileImages[index],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Profile Name",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black87),
                              )
                            ],
                          ),
                        )),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header POST
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage(
                                    "lib/images/story",
                                  ),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(
                                      profileImages[index],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Profile Name"),
                              Spacer(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.more_vert))
                            ],
                          ),
                          // image post
                          Image.asset(posts[index]),

                          // footer post
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chat_bubble_outline),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.label_outline),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text:  TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(text: "Liked by"),
                                      TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      TextSpan(
                                        text: " and ",
                                      ),
                                      TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
