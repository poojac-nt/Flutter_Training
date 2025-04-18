import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  late final StreamController<int> _controller =
      StreamController<int>(onListen: () async {
    await Future.delayed(Duration(seconds: 2));

    if (!_controller.isClosed) {
      _controller.add(1);
    }
    await Future.delayed(Duration(seconds: 2));

    if (!_controller.isClosed) {
      _controller.close();
    }
  });
  Stream<int> get bids => _controller.stream;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (!_controller.isClosed) {
      _controller.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style: Theme.of(context).textTheme.displayMedium!,
          textAlign: TextAlign.center,
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: StreamBuilder(
                stream: bids,
                builder: (context, snapshot) {
                  List<Widget> children;
                  if (snapshot.hasError) {
                    children = [
                      Icon(
                        Icons.info_outline,
                        color: Colors.blue,
                        size: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.00),
                        child: Text("${snapshot.error}"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.00),
                        child: Text("${snapshot.stackTrace}"),
                      ),
                    ];
                  } else {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        children = [
                          Icon(
                            Icons.info_outline,
                            size: 60,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Select a lot"),
                          )
                        ];
                      case ConnectionState.waiting:
                        children = [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: CircularProgressIndicator(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Awaiting bids..."),
                          )
                        ];
                      case ConnectionState.active:
                        children = [
                          Icon(
                            Icons.check_circle_outline_rounded,
                            size: 60,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("\$${snapshot.data}"),
                          )
                        ];
                      case ConnectionState.done:
                        children = [
                          Icon(
                            Icons.info_outline,
                            size: 60,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(snapshot.hasData
                                ? "${snapshot.data} (Closed)"
                                : "(Closed)"),
                          )
                        ];
                    }
                  }
                  return StreamBuilder<Object>(
                      stream: null,
                      builder: (context, snapshot) {
                        return Center(
                          child: Column(
                            children: children,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        );
                      });
                }),
          )),
    );
  }
}
