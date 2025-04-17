import 'package:flutter/material.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  @override
  Widget build(BuildContext context) {
    final Future<String> future =
        Future<String>.delayed(const Duration(seconds: 2), () => 'Data Loaded');
    return Scaffold(
      body: DefaultTextStyle(
          style: Theme.of(context).textTheme.headlineMedium!,
          textAlign: TextAlign.center,
          child: FutureBuilder(
            future: future,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                children = [
                  const Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.green,
                    size: 40,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 16)),
                  Text("Result : ${snapshot.data}")
                ];
              } else if (snapshot.hasError) {
                children = [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 40,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 16)),
                  Text("Result : ${snapshot.error}")
                ];
              } else {
                children = [
                  const SizedBox(
                      width: 60,
                      height: 50,
                      child: CircularProgressIndicator()),
                  const Text("Awaiting Result....")
                ];
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              );
            },
          )),
    );
  }
}
