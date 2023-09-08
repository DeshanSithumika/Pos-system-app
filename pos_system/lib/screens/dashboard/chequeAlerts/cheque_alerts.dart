import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_text.dart';
import 'package:pos_system/screens/dashboard/widgets/selling_item_row.dart';
import 'package:pos_system/widgets/four_colum_data_row.dart';
import 'package:pos_system/widgets/four_column_header.dart';

class ChequeAlerts extends StatefulWidget {
  const ChequeAlerts({super.key});

  @override
  State<ChequeAlerts> createState() => _ChequeAlertsState();
}

class _ChequeAlertsState extends State<ChequeAlerts> {
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
              text: "Cheque Alerts",
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const FourColumnHeader(
            colOne: "Cheque No",
            colTwo: "Cheque Date",
            colTree: "Type",
            colFour: "Bank",
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, index) => const FourColumDataRow(),
              itemCount: 30,
            ),
          ),
          const Divider(),
          Container(
            height: 40,
            width: 400,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.lightBlue),
            child: const Text(
              "Top selling items",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => const SellingItemRow(
                  itemNumb: "1",
                  itemName: "78X78 THERMAL BILL ROLLS",
                  itemCode: "64e9d8",
                  itemCount: "71 items"),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
