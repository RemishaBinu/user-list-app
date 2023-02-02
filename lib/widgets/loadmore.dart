import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadMore extends StatelessWidget{

  final VoidCallback onPressed;

  LoadMore({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed, child: const Text("Load more"),);
  }

}