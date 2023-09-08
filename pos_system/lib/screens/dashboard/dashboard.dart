import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_text.dart';
import 'package:pos_system/Utils/util_nav.dart';
import 'package:pos_system/screens/dashboard/chequeAlerts/cheque_alerts.dart';
import 'package:pos_system/screens/dashboard/stockAlerts/stock_alerts.dart';
import 'package:pos_system/screens/dashboard/widgets/dashboard_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DashboardContainer(
                        icon: Icons.pie_chart,
                        color: Color(0xFF1CC88A),
                        text: "Today Sellings",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.bar_chart_sharp,
                        color: Color(0xFF24344D),
                        text: "Weekly Sellings",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.waterfall_chart_outlined,
                        color: Colors.amber,
                        text: "Monthly Sellings",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.double_arrow,
                        color: Color(0xFFDC3545),
                        text: "Total Credit Bills",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.shopping_bag_rounded,
                        color: Color(0xFF0D6EFD),
                        text: "Today Purchased",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.shopping_cart_outlined,
                        color: Color(0xFF0DCAF0),
                        text: "Monthly Purchased",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.subdirectory_arrow_left_rounded,
                        color: Color(0xFF6C757D),
                        text: "Monthly Purch. Returns",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.calculate_outlined,
                        color: Color(0xFF862F6F),
                        text: "Total Items",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.monetization_on_outlined,
                        color: Color(0xFF264087),
                        text: "Today Expense",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.price_change_outlined,
                        color: Color(0xFFBA3CF5),
                        text: "Monthly Expense",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.currency_exchange_rounded,
                        color: Color(0xFF0FB453),
                        text: "Today Profit",
                        price: "00",
                      ),
                      DashboardContainer(
                        icon: Icons.add_card,
                        color: Color(0xFFFFC107),
                        text: "Monthly Profit",
                        price: "00",
                      ),
                      SizedBox(height: 20),
                      Row(
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
                    ],
                  ),
                  const SizedBox(height: 5),
                  //------------view stock allert button start
                  InkWell(
                    onTap: () {
                      UtilNav.navigateTo(context, const StockAlerts());
                      //!-----view  stock method
                    },
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                          child: Text(
                        "View Stock Alerts",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  //------------view stock allert button end
                  //------------view Cheque allert button start
                  const SizedBox(height: 10),
                  const Row(
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
                  const SizedBox(height: 5),
                  InkWell(
                    onTap: () {
                      UtilNav.navigateTo(context, const ChequeAlerts());
                      //!-----view  Cheque Alerts
                    },
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                          child: Text(
                        "View Cheque Alerts",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  //------------view Cheque allert button start
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
