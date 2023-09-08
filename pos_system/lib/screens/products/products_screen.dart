import 'package:flutter/material.dart';
import 'package:pos_system/screens/products/product_row.dart';
import 'package:pos_system/widgets/short_barcodebar.dart';
import 'package:pos_system/widgets/short_searchbar.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _barcoder = TextEditingController();

  // String dropdownvalue = 'Item 1';

  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Products",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShortSearchbar(searchController: _searchController),
              ShortBarcodeBar(barcoder: _barcoder)
            ],
          ),
          const SizedBox(height: 5),
          // Row(
          //   children: [
          //     Container(
          //       height: 50,
          //       width: 180,
          //       decoration: BoxDecoration(border: Border.all()),
          //       child: DropdownButton(
          //         // Initial Value
          //         value: dropdownvalue,

          //         // Down Arrow Icon
          //         icon: const Icon(Icons.keyboard_arrow_down),

          //         // Array list of items
          //         items: items.map((String items) {
          //           return DropdownMenuItem(
          //             value: items,
          //             child: Text(items),
          //           );
          //         }).toList(),
          //         // After selecting the desired option,it will
          //         // change button value to selected value
          //         onChanged: (String? newValue) {
          //           setState(() {
          //             dropdownvalue = newValue!;
          //           });
          //         },
          //       ),
          //     ),
          //   ],
          // )

          InkWell(
            onTap: () {
              //!---add new products function
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 380,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFF1CC88A),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.medical_services),
                  SizedBox(width: 6),
                  Text(
                    "Add New Product",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
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
                SizedBox(width: 170),
                Text(
                  "Price",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(width: 55),
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
            itemBuilder: (context, index) => const ProductRow(),
            itemCount: 3,
          ))
        ],
      )),
    );
  }
}
