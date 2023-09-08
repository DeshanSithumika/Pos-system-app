import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({
    required this.color,
    required this.icon,
    required this.price,
    required this.text,
    super.key,
  });

  final IconData icon;
  final Color color;
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 350,
      height: 110,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 17),
              ),
              Text(
                "Rs.$price",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
