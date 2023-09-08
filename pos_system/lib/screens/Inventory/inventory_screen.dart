import 'package:flutter/material.dart';
import 'package:pos_system/screens/Inventory/inventory_row.dart';
import 'package:pos_system/widgets/short_barcodebar.dart';
import 'package:pos_system/widgets/short_searchbar.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _barcoder = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Inventory",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShortBarcodeBar(barcoder: _barcoder),
              ShortSearchbar(searchController: _searchController),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(5),
            height: 35,
            decoration: const BoxDecoration(color: Color(0xFF264087)),
            child: const Row(
              children: [
                Text(
                  "ID",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(width: 20),
                Text(
                  "Name",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(width: 120),
                Text(
                  "Barcode",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(width: 15),
                Text(
                  "Price",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(width: 45),
                Text(
                  "Quantity",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const InventoryRow(),
            itemCount: 3,
          ))
        ],
      )),
    );
  }
}
