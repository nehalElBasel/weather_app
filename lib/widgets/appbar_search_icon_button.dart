import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchIconBtn extends StatelessWidget {
  const SearchIconBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pushNamed("search");
      },
      icon: Icon(Icons.search),
    );
  }
}
