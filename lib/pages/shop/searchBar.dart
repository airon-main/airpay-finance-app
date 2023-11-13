import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/widgets/custom.dart';
import 'komponen/Component.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: darkcolor['card'],
        ),
        child: const myTextField(
          hintText: "Search",
        ));
  }
}
