import 'package:flutter/material.dart';

import '../Shopping Page/komponen/Component.dart';

class cardCompon extends StatefulWidget {
  const cardCompon({Key? key}) : super(key: key);

  @override
  State<cardCompon> createState() => _cardComponState();
}

class _cardComponState extends State<cardCompon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColors.cardDark),
    );
  }
}
