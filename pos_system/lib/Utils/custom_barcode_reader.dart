import 'package:flutter/material.dart';

class CustomBarcodReader extends StatelessWidget {
  const CustomBarcodReader({
    super.key,
    required this.barcodeContraller,
  });

  final TextEditingController barcodeContraller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: SizedBox(
          height: 35,
          child: TextField(
            controller: barcodeContraller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "Search Product...",
              prefixIcon: InkWell(
                onTap: () {
                  //!======barcode reader implementaion
                },
                child: Image.asset(
                  "assets/barcode.png",
                  scale: 2,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
      ),
    );
  }
}
