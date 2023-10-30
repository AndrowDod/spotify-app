import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double theheight = MediaQuery.of(context).size.height;
    final double thewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 28,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: theheight * 0.55,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff0F7347),
                  Color(0xff121212),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: theheight * 0.15,
                ),
//the circle part
                CircleAvatar(
                  radius: 60,
                  backgroundColor: const Color.fromARGB(204, 27, 197, 123),
                  child: Text(
                    'A',
                    style: TextStyle(
                        fontSize: thewidth * 0.12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(206, 0, 0, 0)),
                  ),
                ),
//the name of user
                SizedBox(
                  height: theheight * 0.07,
                  child: Center(
                    child: Text(
                      'Androw',
                      style: TextStyle(
                          color: const Color.fromARGB(216, 255, 255, 255),
                          fontSize: thewidth * 0.07,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
//the edit profile part
                SizedBox(
                  height: theheight * 0.1,
                  child: Center(
                    child: Container(
                      height: theheight * 0.048,
                      width: thewidth * 0.36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(thewidth * 0.5),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        'Edit profile',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(218, 255, 255, 255)),
                      )),
                    ),
                  ),
                ),
// the following & follower part
                SizedBox(
                  height: theheight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: Color.fromARGB(143, 255, 255, 255),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: Color.fromARGB(143, 255, 255, 255),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
//the end
                SizedBox(height: thewidth * 0.07),
                const Center(
                  child: Text(
                    'No recent activity',
                    style: TextStyle(
                        color: Color.fromARGB(218, 255, 255, 255),
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
