import 'package:flutter/material.dart';
import 'package:spotify_app/models/recently_played_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
//the top part of recently
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 29, 121, 114),
                    Color(0xff011312),
                  ])),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Column(
                  children: [
//the recently played song
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Recently Played',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/songpage',
                              arguments: {
                                'name': recentlylist[index].name,
                                'imageurl': recentlylist[index].imageurl,
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    recentlylist[index].imageurl,
                                    fit: BoxFit.cover,
                                  ),
                                  const Spacer(),
                                  Text(
                                    recentlylist[index].name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
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
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
// the good evening part
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Good evening',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio:
                                      MediaQuery.of(context).size.width /
                                          MediaQuery.of(context).size.height /
                                          0.15,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemCount: 6,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/songpage',
                                arguments: {
                                  'name': goodeveninglist[index].name,
                                  'imageurl': goodeveninglist[index].imageurl,
                                },
                              );
                            },
                            child: Card(
                              elevation: 3,
                              clipBehavior: Clip.hardEdge,
                              child: Container(
                                color: Colors.grey,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      goodeveninglist[index].imageurl,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(goodeveninglist[index].name),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
//the Based on your recent listining part
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Based on your recent listining',
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
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/songpage',
                            arguments: {
                              'name':
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                              'imageurl': recentlisting[index].imageurl,
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  recentlisting[index].imageurl,
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
            ),
//the Recommended radio part
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Recommended radio',
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
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
