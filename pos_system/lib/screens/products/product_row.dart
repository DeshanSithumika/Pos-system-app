import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({
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
              SizedBox(width: 170),
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 55),
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
