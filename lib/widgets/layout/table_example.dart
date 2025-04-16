import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          textBaseline: TextBaseline.alphabetic,
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(63),
            1: FlexColumnWidth(),
            2: FlexColumnWidth()
          },
          border: const TableBorder.symmetric(
              inside: BorderSide(color: Colors.grey, width: 1)),
          defaultVerticalAlignment: TableCellVerticalAlignment.intrinsicHeight,
          children: const [
            TableRow(children: [
              Center(
                child: Text(
                  "ID",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TableCell(
                child: Center(
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Profession",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              TableCenterWidget(data: "1"),
              TableCenterWidget(data: "Radha"),
              TableCenterWidget(
                data: "ML Engineer",
              ),
            ]),
            TableRow(children: [
              TableCenterWidget(data: "5"),
              TableCenterWidget(data: "Krishna"),
              TableCenterWidget(
                data: "FrontEnd Engineer",
              ),
            ]),
            TableRow(children: [
              TableCenterWidget(data: "6"),
              TableCenterWidget(data: "Gopi"),
              TableCenterWidget(
                data: "Backend Engineer",
              ),
            ]),
            TableRow(children: [
              TableCenterWidget(data: "10"),
              TableCenterWidget(data: "Radhika"),
              TableCenterWidget(
                data: "AI Engineer",
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class TableCenterWidget extends StatelessWidget {
  const TableCenterWidget({
    super.key,
    required this.data,
  });

  final String data;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        data,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
