import 'package:flutter/material.dart';

class CustomTableFour extends StatelessWidget {
  const CustomTableFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Table(
        // defaultColumnWidth: const FixedColumnWidth(50),
        children: const [
          TableRow(children: [
            TableCell(
              child: Text("cell1"),
            ),
            TableCell(
              child: Text("cell2"),
            ),
            TableCell(
              child: Text("cell3"),
            ),
            TableCell(
              child: Text("cell3"),
            ),
          ])
        ],
      ),
    );
  }
}
