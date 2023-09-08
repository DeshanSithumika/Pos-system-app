import 'package:flutter/material.dart';

class InventoryRow extends StatelessWidget {
  const InventoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 50,
      child: const Column(
        children: [
          Row(
            children: [
              Text(
                "ID",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 120),
              Text(
                "Barcode",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 15),
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 45),
              Text(
                "Quantity",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
