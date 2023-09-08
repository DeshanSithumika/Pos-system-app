import 'package:flutter/material.dart';

class FiveColumnHeader extends StatelessWidget {
  const FiveColumnHeader({
    required this.colOne,
    required this.colTwo,
    required this.colTree,
    required this.colFour,
    required this.colFive,
    super.key,
  });

  final String colOne;
  final String colTwo;
  final String colTree;
  final String colFour;
  final String colFive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Container(
        decoration: const BoxDecoration(color: Color(0xFF264087)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              colOne,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              colTwo,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              colFour,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              colFive,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
