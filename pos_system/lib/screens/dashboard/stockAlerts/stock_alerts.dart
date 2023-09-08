import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_text.dart';
import 'package:pos_system/widgets/five_colum_header.dart';
import 'package:pos_system/widgets/four_colum_data_row.dart';

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
          Expanded(
              child: SizedBox(
            child: ListView.builder(
              itemBuilder: (context, index) => const FourColumDataRow(),
              itemCount: 1,
            ),
          )),
        ],
      ),
    );
  }
}
