import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/input/debouncer_class.dart';

class AutocompleteExample extends StatefulWidget {
  const AutocompleteExample({super.key});
  static const List<String> options = <String>[
    'radha',
    'radhika',
    'radhi',
    'kanha',
    'krishna'
  ];

  @override
  State<AutocompleteExample> createState() => _AutocompleteExampleState();
}

class _AutocompleteExampleState extends State<AutocompleteExample> {
  final debouce = Debouncer(milliSeconds: 100);
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
    var snackBar = SnackBar(content: Text("Counter: $counter"));
    debouce.run(() {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                " Type below to auto complete word from [radha,radhika,radhi,kanha,krishna]"),
            Autocomplete(
              fieldViewBuilder: (context, textEditingController, fieldFocusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: fieldFocusNode,
                  decoration: InputDecoration(hintText: "Type here"),
                );
              },
              // onSelected: (option) {
              //   ScaffoldMessenger.of(context)
              //       .showSnackBar(SnackBar(content: Text(option)));
              // },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '')
                  return Iterable<String>.empty();
                return AutocompleteExample.options.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: "Increase number",
        child: Icon(Icons.add),
      ),
    );
  }
}
