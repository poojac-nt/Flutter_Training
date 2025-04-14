import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                iconAlignment: IconAlignment.start,
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                label: const Text("Disabled"),
                icon: const Icon(Icons.send),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text("Pressed"),
                      duration: const Duration(seconds: 5),
                      showCloseIcon: true,
                      dismissDirection: DismissDirection.startToEnd,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(label: "Undo", onPressed: () {}),
                    ));
                  },
                  onLongPress: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("longgggg pressed Text"))),
                  onHover: (value) => value == true
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Hovered pressed Text")))
                      : null,
                  child: const Text("Enabled")),
              FilledButton(
                  onPressed: () {}, child: const Text("Filled Button")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outline Button")),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundBuilder: (context, states, child) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                            border: states.contains(WidgetState.hovered)
                                ? Border(
                                    bottom: BorderSide(color: Colors.black))
                                : const Border()),
                        child: child,
                      );
                    },
                  ),
                  child: const Text(
                    "Text Button",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  )),
            ]),
      ),
    );
  }
}
