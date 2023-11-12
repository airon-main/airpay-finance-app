import 'package:air_pay/extensions.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom.dart';

class shopCon extends StatelessWidget {
  final String imagePath;
  final String title;
  final String imageAssetPath;

  const shopCon({
    super.key,
    required this.imagePath,
    required this.title,
    required this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(5),
        child: Container(
          width: 165,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageAssetPath))),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class judulPage extends StatelessWidget {
  final String title;
  final String? title1;

  const judulPage({Key? key, required this.title, this.title1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Lato',
              ),
            ),
            if (title1 != null)
              Text(
                title1!,
                style: const TextStyle(
                  color: AppColors.disabled,
                  fontFamily: 'Roboto',
                  fontSize: 12,
                ),
              )
          ],
        ));
  }
}

class promoPage extends StatelessWidget {
  final String imageAssetPath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const promoPage(
      {Key? key,
      required this.imageAssetPath,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.card,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 60,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                    ),
                    child: Image.asset(
                      imageAssetPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      height: 60,
                      width: 233,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: AppColors.disabled,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text2,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text3,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.main,
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      )),
                ),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                          color: AppColors.Green,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(5))),
                      child: Center(
                        child: Text(
                          text4,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const RoundedIconButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padSize = 12.0;
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColors.card,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(
            size.width * (padSize / size.width),
          ),
          // Sesuaikan padding sesuai kebutuhan
          child: Icon(
            icon,
            color: AppColors.contrast,
          ),
        ),
      ),
    );
  }
}

class AppColors {
  static const Color greenAppBar = Color(0xFF00880C);
  static const Color blackText = Color(0xFF4A4A4A);
  static const Color blueGotab = Color(0xFF0081A0);
  static const Color greenConMenu = Color(0xFFE5F9D4);
  static const Color greenImgMenu = Color(0xFF3D872A);
  static const Color redConMenu = Color(0xFFFAE3E2);
  static const Color redImgMenu = Color(0xFFDC3F3D);
  static const Color purpleImgMenu = Color(0xFF87027B);
  static const Color blueConMenu = Color(0xFFD8F2F9);
  static const Color blueImgMenu = Color(0xFF0AAFD9);
  static const Color blackMoreMenu = Color(0xFFEDEDED);
  static const Color main = Color(0xffF2CE18);
  static const Color contrasmain = Color(0xff000000);
  static const Color contrast = Color(0xffffffff);
  static const Color background = Color(0xff1b1b1b);
  static const Color card = Color(0xff292929);
  static const Color cardDark = Color(0xff222222);
  static const Color disabled = Color(0xff888888);
  static const Color Green = Color(0xff23c552);
  static const Color red = Color(0xfff84f31);
}

class TopUpNominal extends StatelessWidget {
  final String imageAssetPath;
  final String text1;
  final String text2;
  final String text3;
  const TopUpNominal(
      {Key? key,
      required this.imageAssetPath,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.card,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 60,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                    ),
                    child: Image.asset(
                      imageAssetPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      height: 60,
                      width: 233,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: AppColors.disabled,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text2,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text3,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.main,
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class customElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const customElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor), // Background color
          foregroundColor:
              MaterialStateProperty.all<Color>(textColor), // Text color
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 16)), // Text style
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(8)), // Padding
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Border radius
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class myCard extends StatelessWidget {
  const myCard(
      {Key? key,
      required this.imagePath,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5})
      : super(key: key);
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.card,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 77,
            width: 133,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                height: 77,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.disabled,
                          fontFamily: 'Roboto'),
                    ),
                    Text(
                      text2,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontFamily: 'Roboto'),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            text3,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.contrast,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text4,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.disabled,
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text5,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.contrast,
                                fontFamily: 'Roboto'),
                          ),
                        ].withSpaceBetween(width: 2),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class myCustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const myCustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor), // Background color
          foregroundColor:
              MaterialStateProperty.all<Color>(textColor), // Text color
          textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold)), // Text style
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(10)), // Padding
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Border radius
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class detailAccInfo extends StatelessWidget {
  const detailAccInfo({Key? key, required this.childWidget, required this.text})
      : super(key: key);
  final Widget childWidget;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(color: AppColors.disabled),
          ),
        ),
        Expanded(
          child: childWidget,
        ),
      ],
    );
  }
}


class dropdownChoices extends StatelessWidget {
  const dropdownChoices({Key? key, required this.text, required this.text1, required this.icon}) : super(key: key);
  final String text;
  final String text1;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(text, style: TextStyle(
              color: AppColors.disabled
          ),),
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(text1, style: TextStyle(
                        color: AppColors.contrast
                    ),),
                  ),
                  Icon(icon, size: 30, color: AppColors.contrast,),
                ],
              ),
            ),
          )
        ].withSpaceBetween(width: 25),
      ),
    );
  }
}
