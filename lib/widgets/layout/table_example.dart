import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        columnWidths: <int, TableColumnWidth>{
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: FixedColumnWidth(64)
        },
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Container(
              color: Colors.blue,
              height: 50,
            ),
            TableCell(
              child: Container(
                color: Colors.indigo,
                height: 50,
              ),
            ),
            Container(
              color: Colors.lime,
              height: 50,
            ),
          ]),
          TableRow(children: [
            Container(
              color: Colors.orange,
              height: 50,
            ),
            Container(
              color: Colors.purple,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              height: 50,
            ),
          ])
        ],
      ),
    );
  }
}
