
import 'package:flutter/material.dart';

import 'insta.dart';


void main() {
  runApp(const MaterialApp(home:insta(),));
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

