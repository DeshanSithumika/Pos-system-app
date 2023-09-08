import 'package:flutter/material.dart';

class ShortBarcodeBar extends StatelessWidget {
  const ShortBarcodeBar({
    super.key,
    required TextEditingController barcoder,
  }) : _barcoder = barcoder;

  final TextEditingController _barcoder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 185,
      child: TextField(
        controller: _barcoder,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: "Product...",
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
    );
  }
}
