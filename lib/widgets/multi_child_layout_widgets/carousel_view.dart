import 'package:flutter/material.dart';

class CarouselViewExample extends StatefulWidget {
  const CarouselViewExample({super.key});

  @override
  State<CarouselViewExample> createState() => _CarouselViewExampleState();
}

class _CarouselViewExampleState extends State<CarouselViewExample> {
  List<String> images = [
    "https://img.freepik.com/free-vector/shree-ram-navami-cultural-background-with-mandir-design_1017-51696.jpg",
    "https://img.freepik.com/free-vector/traditional-govardhan-puja-wishes-background-with-krishna-silhouette-vector_1017-46660.jpg",
    "https://img.freepik.com/free-vector/happy-dussehra-greeting-card-design-with-temples_1017-33979.jpg",
    "https://img.freepik.com/free-vector/yellow-circle-happy-pongal_23-2147533826.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 200),
          child: CarouselView(
            itemExtent: 150,
            children: List.generate(
                images.length, (index) => Image.network("${images[index]}")),
          ),
        ),
      ),
    );
  }
}
