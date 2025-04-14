import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "Radhe radhe radhe radhe radhe ",
            selectionColor: Colors.blue,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent,
                height: 2,
                backgroundColor: Colors.lightBlueAccent.withOpacity(0.1),
                decoration: TextDecoration.underline,
                letterSpacing: 2.0,
                decorationThickness: 1.0,
                decorationColor: Colors.blueAccent,
                decorationStyle: TextDecorationStyle.wavy,
                shadows: const [
                  Shadow(
                    color: Colors.lightBlueAccent,
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  )
                ],
                textBaseline: TextBaseline.ideographic),
            textScaler: TextScaler.linear(
                2.0), // multiply font size by given text scaler 10.0
            textDirection: TextDirection.ltr,
          ),
        ),
        Stack(
          children: [
            Text("Hey",
                style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue)),
            Text(
              "Hey",
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey.shade200,
              ),
            )
          ],
        ),
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade700])
                .createShader(Rect.fromCenter(
                    center: Offset(60, 160), width: 160, height: 70));
          },
          child: Text(
            "Radha Krishn",
            style: TextStyle(fontSize: 40),
          ),
        ),
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade700])
                .createShader(Rect.fromPoints(Offset(0, 0), Offset(160, 100)));
          },
          child: Text(
            "Radha Krishn",
            style: TextStyle(fontSize: 40),
          ),
        ),
        RichText(
          text: TextSpan(
              text: "Hey, ",
              style: TextStyle(
                  fontSize: 14, color: Colors.blue), //default color is white
              children: [
                TextSpan(
                    text: "Good morning...!!",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                TextSpan(text: " How are you??")
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Use elevated buttons to add dimension to otherwise mostly flat layouts,"
          " e.g. in long busy lists of content, or in wide spaces. Avoid using"
          " elevated buttons on already-elevated content such as dialogs or cards",
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.center,
          selectionColor: Colors.teal,
        )
      ]),
    ));
  }
}
