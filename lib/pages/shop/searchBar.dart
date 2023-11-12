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
        decoration: const BoxDecoration(
          color: AppColors.card,
        ),
        child: const myTextField(
          hintText: "Search",
        ));
  }
}
