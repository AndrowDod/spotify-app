import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    final double theheight = MediaQuery.of(context).size.height;
    final double thewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        elevation: 12,
        backgroundColor: const Color(0xff121212),
        toolbarHeight: theheight * 0.11,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xffB59BC8),
              radius: thewidth * 0.05,
              child: const Text(
                'A',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: thewidth * 0.03,
            ),
            const Text(
              'Your Library',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: thewidth * 0.08,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: thewidth * 0.09,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
// the part of most recent
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.compare_arrows_sharp,
                    color: Colors.white,
                    size: thewidth * 0.05,
                  ),
                ),
                SizedBox(
                  width: thewidth * 0.03,
                ),
                const Text(
                  'Most recent',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    right: thewidth * 0.03,
                  ),
                  child: Icon(
                    Icons.auto_awesome_mosaic_outlined,
                    color: Colors.white,
                    size: thewidth * 0.06,
                  ),
                )
              ],
            ),
// the Liked songs part
            Padding(
              padding: EdgeInsets.only(top: theheight * 0.015),
              child: Row(
                children: [
                  Container(
                    width: thewidth * 0.18,
                    height: theheight * 0.08,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff470AF5),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 29,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: thewidth * 0.03),
                    child: Column(
                      children: [
                        const Text(
                          'Liked Songs',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.push_pin_rounded,
                              color: Colors.green,
                              size: 20,
                            ),
                            SizedBox(
                              width: thewidth * 0.01,
                            ),
                            Text(
                              'PlayList. 1song',
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
//the add artists part
            Padding(
              padding: EdgeInsets.only(top: theheight * 0.02),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: thewidth * 0.09,
                    backgroundColor: const Color.fromARGB(255, 78, 78, 78),
                    child: Icon(
                      Icons.add,
                      size: thewidth * 0.11,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: thewidth * 0.05,
                  ),
                  Text(
                    'Add artists',
                    style: TextStyle(
                      fontSize: thewidth * 0.04,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
//the add prodects & shows part
            Padding(
              padding: EdgeInsets.only(top: theheight * 0.02),
              child: Row(
                children: [
                  Container(
                    width: thewidth * 0.18,
                    height: theheight * 0.082,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 78, 78, 78),
                    ),
                    child: Icon(
                      Icons.add,
                      size: thewidth * 0.11,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: thewidth * 0.05,
                  ),
                  Text(
                    'Add prdects & shows',
                    style: TextStyle(
                      fontSize: thewidth * 0.04,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
