import 'package:flutter/material.dart';

class ShortSearchbar extends StatelessWidget {
  const ShortSearchbar({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 185,
      child: TextField(
        controller: _searchController,
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
