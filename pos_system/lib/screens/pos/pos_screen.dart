import 'package:flutter/material.dart';
import 'package:pos_system/Utils/custom_barcode_reader.dart';
import 'package:pos_system/Utils/custom_four_table.dart';
import 'package:pos_system/Utils/custome_searchbar.dart';
import 'package:pos_system/screens/pos/dataTB/pos_table_data.dart';
import 'package:pos_system/screens/pos/widgets/custom_button.dart';

class PosScreen extends StatefulWidget {
  const PosScreen({super.key});

  @override
  State<PosScreen> createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  final TextEditingController searchContoller = TextEditingController();
  final TextEditingController barcoder = TextEditingController();

  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Point Of Selling",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            //=======search bar start
            Padding(
              padding: const EdgeInsets.all(7),
              child: CustomSearchBar(searchContoller: searchContoller),
            ),
            //==============search bar end

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //==============barcode reader start
                CustomBarcodReader(barcodeContraller: barcoder),
                //=================barcode reader end
                //----whole sale switch start
                Switch(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: isTrue,
                  onChanged: (value) {
                    setState(() {
                      isTrue = !isTrue;
                      //!whole sale implementation
                    });
                  },
                ),
                const Text(
                  "Whole Sale",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                //----whole sale switch end
                //==============hold button start
                SizedBox(
                  child: InkWell(
                    onTap: () {
                      //!===hold button function
                    },
                    child: Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        padding: const EdgeInsets.all(3),
                        width: 60,
                        height: 30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFF264087)),
                        child: const Center(
                          child: Text(
                            "Hold",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ),
                //==============hold button end
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
            //======product column header start here
            SizedBox(
              height: 35,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xFF264087)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "Amount",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "Date and Time",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            //======product column header start here
            //======product column data cells start here
            Expanded(
              child: SizedBox(
                  child: ListView.builder(
                itemBuilder: (context, index) => const PosTableRow(),
                itemCount: 1,
              )),
            ),
            //======product column data cells end here
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //===========clear button start here
                InkWell(
                  onTap: () {
                    //!====clear button function
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Icon(Icons.autorenew_rounded),
                        Text(
                          "Clear",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                //===========clear button start here
              ],
            ),
            const Divider(),
            //===========bought item table header start here
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Product",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Unit Price",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Amount",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            //===========bought item table header end here
            //===========bought item table data rows start here
            Expanded(
              child: SizedBox(
                  child: ListView.builder(
                itemBuilder: (context, index) => const CustomTableFour(),
                itemCount: 1,
              )),
            ),
            //===========bought item table data rows start here

            const Divider(),
            //======== Total items and amount section start
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total items:"),
                Text("00"),
              ],
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount:"),
                  Text("Rs.00"),
                ]),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rs.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
            const SizedBox(height: 8),
            //======== Total items and amount section start
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  color: const Color(0xFF0FB453),
                  function: () {
                    //!--complete function implement
                  },
                  text: "Complete",
                ),
                CustomButton(
                    color: const Color(0xFFFFC107),
                    function: () {
                      //!--Multiple function implement
                    },
                    text: "Multiple"),
                CustomButton(
                    color: const Color(0xFFDC3545),
                    function: () {
                      //!--Credit Bill function implement
                    },
                    text: "Credit Bill"),
              ],
            ),
            const SizedBox(height: 5)
          ],
        ),
      ),
    ));
  }
}
