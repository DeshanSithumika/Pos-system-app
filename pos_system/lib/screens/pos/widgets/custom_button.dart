import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.function,
    required this.color,
    required this.text,
    super.key,
  });

  final Function() function;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: 100,
        height: 35,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
