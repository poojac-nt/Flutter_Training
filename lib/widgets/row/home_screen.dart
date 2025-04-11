import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/row/row_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RowExample extends StatefulWidget {
  const RowExample({super.key});

  @override
  State<RowExample> createState() => _RowExampleState();
}

class _RowExampleState extends State<RowExample> {
  double? rating = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.settings_rounded,
              color: Colors.white,
            ),
          )
        ],
        leading: const Icon(
          Icons.dehaze,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.deepPurple, Colors.blue]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
          ),
          Stack(
            children: [
              Positioned(
                top: 170,
                left: 15,
                child: Container(
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: const Offset(0, 15))
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const Positioned(
                top: 120,
                left: 145,
                child: CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: AssetImage("assets/images/download.jpeg")),
              ),
              const Positioned(
                  top: 235,
                  left: 165,
                  child: Text(
                    "Radha",
                    style: TextStyle(fontSize: 30, color: Colors.deepPurple),
                  )),
              Positioned(
                  top: 280,
                  left: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Age: 25"),
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.currency_rupee_outlined,
                        size: 15,
                      ),
                      const Text("1500"),
                      const SizedBox(
                        width: 30,
                      ),
                      RatingBar.builder(
                          itemCount: 5,
                          initialRating: rating ?? 0.0,
                          minRating: 3,
                          itemSize: 20,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.deepPurple,
                            );
                          },
                          onRatingUpdate: (rating) {
                            setState(() {
                              rating = rating;
                            });
                          })
                    ],
                  )),
            ],
          ),
          const Positioned(
            top: 380,
            left: 17,
            child: Row(
              children: [
                RowWidget(
                  title: "543",
                  subTitle: "Likes",
                  borderColor: Colors.deepPurple,
                ),
                SizedBox(
                  width: 10,
                ),
                RowWidget(
                  title: "674",
                  subTitle: "Blessings",
                  borderColor: Colors.lightBlueAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                RowWidget(
                  title: "100",
                  subTitle: "Blessed",
                  borderColor: Colors.deepOrangeAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
