import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  TextEditingController controller = TextEditingController();

  List<String> names = ["Radha", "Kanha", "hari", "Ram"];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter person name to add in list",
              ),
              onSubmitted: (value) {
                setState(() {
                  names.add(value);
                });
                controller.clear();
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (index == 0) {
                      index = names.length - 1;
                    } else {
                      index--;
                    }
                  });
                },
                child: Icon(
                  Icons.chevron_left,
                  key: Key('Gesture 1'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndexedStack(index: index, children: <Widget>[
                    for (final String name in names) PersonTracker(name: name),
                  ]),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (index == names.length - 1) {
                      index = 0;
                    } else {
                      index = index + 1;
                    }
                  });
                },
                child: Icon(
                  Icons.chevron_right,
                  key: Key('Gesture 2'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PersonTracker extends StatefulWidget {
  final String name;

  const PersonTracker({super.key, required this.name});
  @override
  State<PersonTracker> createState() => _PersonTrackerState();
}

class _PersonTrackerState extends State<PersonTracker> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.name),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
      ),
      child: Column(
        children: [
          Text("Name:${widget.name}"),
          Text("Score : $counter"),
          SizedBox(
            height: 10,
          ),
          TextButton.icon(
            key: Key('increment${widget.name}'),
            onPressed: () {
              setState(() {
                print(widget.name);
                counter++;
              });
            },
            label: Text("Increment"),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
