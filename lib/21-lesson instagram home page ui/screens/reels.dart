import 'package:flutter/material.dart';

class TwentyTwothReels extends StatefulWidget {
  const TwentyTwothReels({super.key});

  @override
  State<TwentyTwothReels> createState() => _TwentyTwothReelsState();
}

class _TwentyTwothReelsState extends State<TwentyTwothReels> {
  bool isLikes = false;
  bool isFollow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          forceMaterialTransparency: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
            )
          ],
          title: const Text(
            "Reels",
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 15,
                      child: Column(
                        children: [
                          const Column(
                            children: [
                              InkWell(
                                  child: Icon(Icons.favorite,
                                      color: Colors.white, size: 40)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("9 525",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Column(
                            children: [
                              Icon(Icons.comment,
                                  color: Colors.white, size: 40),
                              SizedBox(
                                height: 5,
                              ),
                              Text("353",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Icon(Icons.airplane_ticket_outlined,
                                  color: Colors.white, size: 40),
                              SizedBox(
                                height: 5,
                              ),
                              Text("7 173",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.more_vert, color: Colors.white, size: 30),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 20,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("tillomirzolimov",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFollow = !isFollow;
                                    });
                                  },
                                  child: isFollow
                                      ? Container(
                                          height: 30,
                                          width: 80,
                                          child: Center(
                                              child: Text(
                                            "Follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2)),
                                        )
                                      : Container(
                                          height: 30,
                                          width: 90,
                                          child: Center(
                                              child: Text(
                                            "Following",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'She fell in love😂❤️....',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.queue_music, color: Colors.white),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Orginal audio - dramma ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.person,
                                    size: 20, color: Colors.white),
                                Text(
                                  " 2 people",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
