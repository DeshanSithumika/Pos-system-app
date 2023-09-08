import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_text.dart';

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
        children: [],
      ),
    );
  }
}
