import 'package:flutter/material.dart';

class SellingItemRow extends StatelessWidget {
  const SellingItemRow({
    required this.itemNumb,
    required this.itemName,
    required this.itemCode,
    required this.itemCount,
    super.key,
  });

  final String itemNumb;
  final String itemName;
  final String itemCode;
  final String itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
              child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    itemNumb,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
              const VerticalDivider(),
              Text(
                itemName,
                style: const TextStyle(fontSize: 15),
              ),
              const VerticalDivider(),
              Text(itemCode),
              const VerticalDivider(),
              Text(itemCode),
            ],
          )),
        ),
        const Divider()
      ],
    );
  }
}
