import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  bool isShadowColor = false;
  double? elevation;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.primary.withOpacity(0.15);
    final evenItemColor = colorScheme.primary.withOpacity(0.05);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar Example"),
        scrolledUnderElevation: elevation,
        shadowColor:
            isShadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 5,
              childAspectRatio: 1.5),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index % 2 == 0 ? evenItemColor : oddItemColor,
              ),
              child: Center(
                child: Text("Item $index"),
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            overflowSpacing: 5,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isShadowColor = !isShadowColor;
                  });
                },
                label: const Text("Shadow Color"),
                icon: Icon(
                    isShadowColor ? Icons.visibility_off : Icons.visibility),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    elevation ??= 4.0;
                    setState(() {});
                    elevation = elevation! + 1.0;
                  },
                  child: Text("Elevation : $elevation"))
            ],
          ),
        ),
      ),
    );
  }
}
