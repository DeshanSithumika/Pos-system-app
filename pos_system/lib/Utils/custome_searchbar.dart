import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.searchContoller,
  });

  final TextEditingController searchContoller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: TextField(
        controller: searchContoller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: "Search Product...",
          suffixIcon: InkWell(
              onTap: () {
                //!===========search function implementation
              },
              child: const Icon(Icons.search)),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
