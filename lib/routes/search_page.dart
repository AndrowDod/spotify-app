import 'package:flutter/material.dart';

import '../models/recently_played_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double gloheight = MediaQuery.of(context).size.height;
    double glowidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.07,
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //the search part
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "What do you want to listen to?",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Browse all',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          MediaQuery.of(context).size.height /
                          0.3),
                  itemCount: 14,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: gloheight * 0.015,
                                  left: glowidth * 0.01),
                              child: Text(
                                searchalbumlist[index].name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 35),
                            child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(1.12),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Card(
                                  elevation: 10,
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.asset(
                                    searchalbumlist[index].imageurl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
