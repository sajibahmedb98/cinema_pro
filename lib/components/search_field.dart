import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 50,
        child: TextField(
          cursorColor: Colors.grey[600],
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(LineIcons.search),
            prefixIconColor: Colors.grey[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: Colors.grey[310],
            filled: true,
          ),
        ),
      ),
    );
  }
}
