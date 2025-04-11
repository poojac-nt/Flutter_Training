import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appbar/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            snap: true,
            floating: true,
            leading: Icon(Icons.dehaze),
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Hello ", style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "Radhe Radhe ",
                      style: TextStyle(
                          color:
                              Theme.of(context).primaryColor.withOpacity(1.0)))
                ])),
              ),
            ),
            scrolledUnderElevation: 19,
            actions: [
              Icon(Icons.notifications_on_rounded),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/8c/cb/2e/8ccb2e2c5e36004dbaa1eb72ad1c73e0.jpg"),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 18.0, left: 18),
              child: Text("Adaper"),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 150,
                width: 150,
                color: index % 2 == 0
                    ? Colors.deepPurpleAccent
                    : Colors.deepPurple,
                child: Center(
                    child: Text(
                  "$index",
                  textScaler: TextScaler.linear(6.0),
                )),
              );
            },
            childCount: 20,
          ))
        ],
      ),
    );
  }
}
