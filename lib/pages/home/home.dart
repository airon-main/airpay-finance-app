import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:air_pay/variables/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var nominalFormat = MoneyMaskedTextController(
        thousandSeparator: ",",
        leftSymbol: "Rp",
        precision: 0,
        decimalSeparator: "");
    nominalFormat.updateValue(500000);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: darkcolor['background'],
            border: Border(
              bottom: BorderSide(width: 1, color: darkcolor['card']),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/User.png'),
                radius: 17,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: darkcolor['disabled'],
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "User Name",
                    style: TextStyle(
                        color: darkcolor['contrast'],
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: darkcolor['card'],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none,
                  color: darkcolor['contrast'],
                  size: 22,
                ),
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ),
      body: Container(
        color: darkcolor['background'],
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: darkcolor['main'],
                    borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Text(
                      nominalFormat.text,
                      style: TextStyle(
                          fontSize: 32, color: darkcolor['contrastmain']),
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(color: darkcolor['contrastmain']),
                    ),
                  ].withSpaceBetween(height: 5),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: darkcolor['card'],
                    foregroundColor: darkcolor['contrast']),
                child: Row(
                  children: [
                    const Icon(Icons.credit_card),
                    const Expanded(child: Text("My Card")),
                    const Icon(Icons.arrow_forward_rounded),
                  ].withSpaceBetween(width: 10),
                ),
              ),
              Row(
                children: [
                  _actionButton(Icons.add_card, "Top Up"),
                  const SizedBox(width: 10),
                  _actionButton(Icons.send, "Transfer"),
                  const SizedBox(width: 10),
                  _actionButton(Icons.wallet, "Withdraw"),
                  const SizedBox(width: 10),
                  _actionButton(Icons.qr_code_scanner, "Scan",
                      color: darkcolor['main']),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Transaction",
                      style: TextStyle(
                          fontSize: 14, color: darkcolor['contrast'])),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View More",
                      style:
                          TextStyle(fontSize: 10, color: darkcolor['disabled']),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: darkcolor['carddark'],
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return transaction(index: index);
                  },
                  itemCount: transactionData.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: darkcolor['card'],
                      height: 25,
                    );
                  },
                ),
              ),
            ].withSpaceBetween(height: 10),
          ),
        ),
      ),
    );
  }

  _actionButton(IconData iconData, String text, {Color? color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(vertical: 10),
            backgroundColor: color ?? darkcolor['card'],
            foregroundColor: color == null
                ? darkcolor['contrast']
                : darkcolor['contrastmain']),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Icon(iconData),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(fontSize: 12),
              )
            ].withSpaceBetween(width: 10),
          ),
        ),
      ),
    );
  }
}

class transaction extends StatelessWidget {
  const transaction({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final String type = transactionData[index]['type'];
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage('assets/images/' + transactionData[index]['photo']),
          radius: 19,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transactionData[index]['name'],
                style: TextStyle(color: darkcolor['contrast'])),
            Text(
              transactionData[index]['date'],
              style: TextStyle(fontSize: 10, color: darkcolor['disabled']),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
                type == 'recieve'
                    ? '+ ' + transactionData[index]['value']
                    : '- ' + transactionData[index]['value'],
                style: type == 'recieve'
                    ? TextStyle(color: darkcolor['green'])
                    : TextStyle(color: darkcolor['red'])),
            Text(
              transactionData[index]['impact'],
              style: TextStyle(fontSize: 10, color: darkcolor['disabled']),
            ),
          ],
        ),
      ].withSpaceBetween(width: 10),
    );
  }
}
