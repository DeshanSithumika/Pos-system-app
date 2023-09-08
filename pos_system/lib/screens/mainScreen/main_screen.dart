import 'package:flutter/material.dart';
import 'package:pos_system/Utils/util_nav.dart';
import 'package:pos_system/screens/dashboard/dashboard.dart';
import 'package:pos_system/screens/pos/pos_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Set<StatefulWidget> list = {DashboardScreen(), PosScreen()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
        title: Image.asset(
          "assets/logo3.png",
          scale: 2,
        ),
        actions: [
          CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_2,
                  ))),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.power_settings_new,
                color: Colors.red,
              ))
        ],
      ),
      body: const DashboardScreen(),
      drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              // SizedBox(child: Image.asset("")),
              ListTile(
                leading: const Icon(Icons.dashboard_rounded),
                title: const Text("Dashboard"),
                onTap: () {
                  UtilNav.navigateTo(context, const DashboardScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.store_mall_directory_rounded),
                title: const Text("POS"),
                onTap: () {
                  UtilNav.navigateTo(context, const PosScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopify_sharp),
                title: const Text("Products"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.inventory_2_outlined),
                title: const Text("Inventory"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.list_alt_rounded),
                title: const Text("Selling"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text("Credi Bill"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.insert_chart_outlined_outlined),
                title: const Text("Reports"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.keyboard_return_sharp),
                title: const Text("Returns"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.people_alt),
                title: const Text("Customers"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.delivery_dining_rounded),
                title: const Text("Supplier"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.local_grocery_store_outlined),
                title: const Text("Purchase"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.price_change_rounded),
                title: const Text("Cheque"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.price_change_outlined),
                title: const Text("Expense"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.co_present_outlined),
                title: const Text("Employee"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.library_books_outlined),
                title: const Text("Show Report"),
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
