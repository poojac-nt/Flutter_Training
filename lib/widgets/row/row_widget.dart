import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.borderColor,
  });

  final String title, subTitle;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: borderColor.withOpacity(0.5),
                offset: Offset(0, 10),
                blurRadius: 15,
                spreadRadius: 2),
          ],
          border: Border(
            bottom: BorderSide(
              color: borderColor,
              style: BorderStyle.solid,
              width: 9,
            ),
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
