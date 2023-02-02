import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget{

  final Function(String text) onSearch;

  SearchBox({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: onSearch,
        decoration: const InputDecoration(
        hintText: 'Search',
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 5,
            color: Color.fromARGB(255, 190, 190, 190),
          ),
        ),
      ),
      ),
    );
  }

}