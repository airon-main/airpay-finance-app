import 'package:air_pay/widgets/custom.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import '../Shopping Page/komponen/Component.dart';

class homeUserPage extends StatelessWidget {
  const homeUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 16.0;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(size.width * (padSize * 5 / size.width)),
          child: Container(
            decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: AppColors.card, width: 1)),
              color: AppColors.cardDark,
            ),
            padding: EdgeInsets.all(size.width * (padSize / size.width)),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shopping Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(
                    width: size.width * (padSize / size.width),
                  ),
                  RoundedIconButton(
                    icon: Icons.notifications_none,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: AppColors.cardDark),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/aku api.jpeg",
                        fit: BoxFit.cover,
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                  Text(
                    "Altan Assyfa Naura Putra",
                    style: TextStyle(
                        color: AppColors.contrast, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "altantheprodigy@gmail.com",
                    style: TextStyle(
                        color: AppColors.disabled,
                        fontWeight: FontWeight.normal),
                  )
                ].withSpaceBetween(height: 5),
              ),
              myButton(
                onClick: () {},
                text: "Account Information",
                backgroundColor: AppColors.card,
                foregroundColor: AppColors.disabled,
                prefixIcon: Icons.person,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {},
                text: "Apperance",
                backgroundColor: AppColors.card,
                foregroundColor: AppColors.disabled,
                prefixIcon: Icons.edit_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {},
                text: "Settings",
                backgroundColor: AppColors.card,
                foregroundColor: AppColors.disabled,
                prefixIcon: Icons.settings_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {},
                text: "Cache",
                backgroundColor: AppColors.card,
                foregroundColor: AppColors.disabled,
                prefixIcon: Icons.edit_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
              myButton(
                onClick: () {},
                text: "About Us",
                backgroundColor: AppColors.card,
                foregroundColor: AppColors.disabled,
                prefixIcon: Icons.info_outline_rounded,
                suffixIcon: Icons.arrow_forward_rounded,
              ),
            ].withSpaceBetween(height: 10),
          ),
        ));
  }
}
