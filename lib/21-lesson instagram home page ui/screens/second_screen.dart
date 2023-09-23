import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwentyTwothScreen extends StatefulWidget {
  const TwentyTwothScreen({super.key});

  @override
  State<TwentyTwothScreen> createState() => _TwentyTwothScreenState();
}

class _TwentyTwothScreenState extends State<TwentyTwothScreen> {
  bool isLike = false;
  bool isVolume = false;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Badge(label: Text("3"), child: Icon(Icons.comment)),
          ),
          SizedBox(
            width: 15,
          )
        ],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("tillomirzolimov"),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  child: isVisible
                                      ? const Icon(Icons.panorama_fish_eye)
                                      : const CircleAvatar(
                                          radius: 14,
                                          child: CircleAvatar(
                                              radius: 4,
                                              backgroundColor: Colors.white),
                                        ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("tillomirzaolimov"),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {});
                                    isVisible = !isVisible;
                                  },
                                  child: isVisible
                                      ? CircleAvatar(
                                          radius: 14,
                                          child: CircleAvatar(
                                              radius: 4,
                                              backgroundColor: Colors.white),
                                        )
                                      : Icon(Icons.panorama_fish_eye))
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 31,
                                    backgroundColor: Colors.grey,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.add,
                                          size: 22, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Add account"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("Instagram ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.lerp(
                      FontWeight.w700,
                      FontWeight.w900,
                      BorderSide.strokeAlignCenter,
                    ))),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: index == 0
                              ? CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.cyanAccent)
                              : CircleAvatar(
                                  radius: 40,
                                  backgroundColor: index % 2 == 0
                                      ? Colors.indigo
                                      : Colors.blue,
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: index == 0
                              ? Text(
                                  "Your story",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                )
                              : Text(
                                  "Leo Messi",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                        )
                      ],
                    );
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onDoubleTap: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        child: Container(
                          height: 450,
                          color: Colors.blue,
                          width: double.infinity,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("intirviyuvuz",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white)),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text("intirviyuvuz-Orginal audio",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 15,
                        left: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                radius: 20,
                                child: Center(child: Icon(Icons.person))),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isVolume = !isVolume;
                                });
                              },
                              child: CircleAvatar(
                                radius: 20,
                                child: Icon(
                                  isVolume
                                      ? Icons.volume_off
                                      : Icons.volume_up_rounded,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isLike = !isLike;
                                  });
                                },
                                child: isLike
                                    ? Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        size: 30,
                                      )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              FontAwesomeIcons.comment,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              FontAwesomeIcons.paperPlane,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          FontAwesomeIcons.bookmark,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("2 465 likes"),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text("interviyuuz",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                                "Qaysi kasbni valilari uchun oliy talikk kerak"),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text("emas?"),
                            Text(
                              "....more",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "View all 33 comments",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "1 gay ago ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
