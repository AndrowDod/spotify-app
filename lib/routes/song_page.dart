import 'package:flutter/material.dart';

import '../models/recently_played_model.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    final argmuent = ModalRoute.of(context)?.settings.arguments as Map;
    final name = argmuent['name'].toString();
    final imageurl = argmuent['imageurl'].toString();
    final double theheight = MediaQuery.of(context).size.height;
    final double thewidth = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
//back ground color
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey,
                    Colors.black,
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: theheight * 0.025,
                  left: theheight * 0.015,
                  right: theheight * 0.015,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
//the song image
                    Center(
                      child: SizedBox(
                        height: theheight * 0.35,
                        child: Card(
                          elevation: 20,
                          child: Image.asset(imageurl),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: theheight * 0.02,
                    ),
//the name adn disc part
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: thewidth * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: theheight * 0.01),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: thewidth * 0.025,
                          backgroundImage: AssetImage(imageurl),
                        ),
                        SizedBox(width: thewidth * 0.02),
                        Expanded(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: thewidth * 0.03,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: theheight * 0.01),
                    Text(
                      ' Album. 2020',
                      style: TextStyle(
                        fontSize: thewidth * 0.027,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: theheight * 0.01),
//the love and play part
                    SizedBox(
                      height: theheight * 0.05,
                      width: thewidth,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: thewidth * 0.03,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.shuffle,
                            color: Colors.grey,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(204, 27, 197, 123),
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
//the songs list part
                    SizedBox(
                      height: theheight * 0.75,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 11,
                        itemBuilder: (context, index) => const ListTile(
                          title: Text(
                            'Song Name ',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'The Singer ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
//You might also like part
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'You might also like ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: ListView.builder(
                            itemCount: goodeveninglist.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/songpage',
                                  arguments: {
                                    'name':
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                    'imageurl': goodeveninglist[index].imageurl,
                                  },
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        goodeveninglist[index].imageurl,
                                        fit: BoxFit.cover,
                                      ),
                                      const Spacer(),
                                      const Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: theheight * 0.15,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
