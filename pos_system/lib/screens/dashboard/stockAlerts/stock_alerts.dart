import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_text.dart';
import 'package:pos_system/widgets/five_colum_header.dart';
import 'package:pos_system/widgets/four_colum_data_row.dart';
import 'package:pos_system/widgets/four_column_header.dart';

class StockAlerts extends StatefulWidget {
  const StockAlerts({super.key});

  @override
  State<StockAlerts> createState() => _StockAlertsState();
}

class _StockAlertsState extends State<StockAlerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.red,
              size: 30,
            ),
            SizedBox(width: 8),
            CustomText(
              text: "Stock Alerts",
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const FiveColumnHeader(
            colOne: "Image",
            colTwo: "Product",
            colTree: "Supplier",
            colFour: "Available",
            colFive: "Action",
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, index) => const FourColumDataRow(),
              itemCount: 1,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.amber),
            child: const Row(
              children: [
                Icon(Icons.warning),
                SizedBox(width: 4),
                Text(
                  "Expiring Items in next 10 days",
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const FourColumnHeader(
              colOne: "Product",
              colTwo: "Quantity",
              colTree: "Exp. Date",
              colFour: "status"),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const FourColumDataRow(),
            itemCount: 3,
          )),
        ],
      ),
    );
  }
}
