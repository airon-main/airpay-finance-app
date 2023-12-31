import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/material.dart';

class shopCon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String imageAssetPath;

  const shopCon({
    super.key,
    required this.icon,
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
                Icon(
                  icon,
                  size: 25,
                  color: darkcolor['contrast'],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: darkcolor['contrast'],
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
              style: TextStyle(
                color: darkcolor['contrast'],
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Lato',
              ),
            ),
            if (title1 != null)
              Text(
                title1!,
                style: TextStyle(
                  color: darkcolor['disabled'],
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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            height: 60,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.cover,
            ),
          )),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 2),
                height: 60,
                width: 233,
                decoration: BoxDecoration(color: darkcolor['card']),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: darkcolor['disabled'],
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: darkcolor['contrast'],
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: darkcolor['main'],
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ].withSpaceBetween(height: 2),
                ),
              )),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: darkcolor['green']),
            height: 60,
            width: 53,
            child: Center(
              child: Text(
                text4,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          )
        ],
      ),
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
      color: darkcolor['card'],
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(
            size.width * (padSize / size.width),
          ),
          // Sesuaikan padding sesuai kebutuhan
          child: Icon(
            icon,
            color: darkcolor['contrast'],
          ),
        ),
      ),
    );
  }
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
      padding: const EdgeInsets.all(5),
      child: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: darkcolor['card'],
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
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['disabled'],
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text2,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['contrast'],
                                fontFamily: 'Roboto'),
                          ),
                          Text(
                            text3,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['main'],
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
  const myCard({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.nominal,
    this.onTap,
    this.onEdit,
    this.onDelete,
    required this.isSelectedString,
  }) : super(key: key);
  final String imagePath;
  final String label;
  final String nominal;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final String isSelectedString;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: darkcolor['carddark']),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 77,
              width: 133,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  // Appropriate logging or analytics, e.g.
                  // myAnalytics.recordError(
                  //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                  //   exception,
                  //   stackTrace,
                  // );
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: darkcolor['card'],
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.broken_image, color: darkcolor['disabled']),
                        Text("Image Not Found",
                            style: TextStyle(
                                color: darkcolor['disabled'], fontSize: 10))
                      ],
                    ),
                  );
                },
              ),
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
                      "$label $isSelectedString",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: darkcolor['disabled'],
                          fontFamily: 'Roboto'),
                    ),
                    Text(
                      nominal,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: darkcolor['contrast'],
                          fontFamily: 'Roboto'),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: onEdit,
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: darkcolor['contrast'],
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                          Text(
                            "•",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: darkcolor['disabled'],
                                fontFamily: 'Roboto'),
                          ),
                          GestureDetector(
                            onTap: onDelete,
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: darkcolor['red'],
                                  fontFamily: 'Roboto'),
                            ),
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
            style: TextStyle(color: darkcolor['disabled']),
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
  const dropdownChoices(
      {Key? key, required this.text, required this.text1, required this.icon})
      : super(key: key);
  final String text;
  final String text1;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: darkcolor['disabled']),
          ),
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                  color: darkcolor['card'],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text1,
                      style: TextStyle(color: darkcolor['contrast']),
                    ),
                  ),
                  Icon(
                    icon,
                    size: 30,
                    color: darkcolor['contrast'],
                  ),
                ],
              ),
            ),
          )
        ].withSpaceBetween(width: 25),
      ),
    );
  }
}
