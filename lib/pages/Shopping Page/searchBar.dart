import 'package:flutter/material.dart';
import 'package:landing_page/Component.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.card,
      ),
      child: Container(
        width: 340,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: AppColors.cardDark,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text(
          "Search",
          style: TextStyle(
            color: AppColors.disabled,
            fontFamily: 'Roboto',
            fontSize: 16,
          ),
        ),
      ),
    );

  }
}
