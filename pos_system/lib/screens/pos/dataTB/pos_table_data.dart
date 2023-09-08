import 'package:flutter/material.dart';

class PosTableRow extends StatelessWidget {
  const PosTableRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Table(
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
          ])
        ],
      ),
    );
  }
}
