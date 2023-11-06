import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;

  CustomText({required this.text, this.style = const TextStyle()});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}




class reusableContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color? textColor;
  final String text;
  final String? text1;
  final double? height;
  final double? width;
  final Image? image;
  final IconData? icon;


  reusableContainer({
    Key? key,
    required this.backgroundColor,
    this.textColor,
    required this.text,
    this.text1,
    this.height,
    this.width,
    this.image,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final defaultSize = 50.0;
    final padSize = 10.0;

    return Container(
      margin: EdgeInsets.all(size.width * (padSize / size.width)),
      child: Column(
        children: [
          Container(
            height: height ?? size.height * (defaultSize / size.height),
            width: width ?? size.width * (defaultSize / size.width),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(50)),
            child: image,
          ),
          SizedBox(
            height: size.width * (defaultSize / 10 / size.width),
          ),
          Text(
            text,
            style: TextStyle(
                color: AppColors.blackText,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato'),
          )

        ],
      ),
    );
  }
}



class AdsContainer extends StatelessWidget {
  final String text;
  final String? text1;
  final String imageAssetPath;


  AdsContainer({
    Key? key,
    required this.text,
    required this.text1,
    required this.imageAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 20.0;

    return Padding(
      padding: EdgeInsets.all(size.width * (padSize / size.width)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Image.asset(
              imageAssetPath,
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
            Container(
              margin: EdgeInsets.all(size.width * (padSize / size.width)),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: size.width * (padSize / 4 / size.width)),
                    child: Text(
                      text,
                      style: TextStyle(
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato'),
                    ),
                  ),
                  Text(
                    text1!,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class Gofood extends StatelessWidget {
  final String jarak;
  final String judul;
  final String rate;
  final String imageAssetPath;
  IconData? icon;

  Gofood({
    Key? key,
    required this.jarak,
    required this.judul,
    required this.rate,
    required this.imageAssetPath,
    this.icon
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}


class GopaySlice extends StatelessWidget {
  final String harga;
  final String? desc;
  final String imageAssetPath;
  const GopaySlice({Key? key, required this.harga, this.desc, required this.imageAssetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widSize = 130.0;
    final heiSize = 15.0;
    final padSize = 8.0;


    return Container(
      width: size.width * (widSize / size.width),
      padding: EdgeInsets.all(size.width * (padSize / size.width)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAssetPath,
            fit: BoxFit.fill,
            height: size.width * (heiSize / size.width),
          ),
          Text(
            harga,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato',
                fontSize: 16
            ),
          ),
          Text(
            desc!,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato',
                fontSize: 12,
                color:Colors.green
            ),
          )
        ],
      ),
    );
  }
}

class OptionContainer extends StatelessWidget {
  final String judul;
  final IconData icon;
  const OptionContainer({Key? key, required this.judul, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 4.0;

    return  Flexible(
      fit: FlexFit.tight,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(size.width * 0.01),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              icon,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: size.width * (padSize / size.width),
          ),
          Text(
            judul,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato'),
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
    final padSize = 12.0;
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAliasWithSaveLayer, color: AppColors.card,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all( size.width * (padSize / size.width),), // Sesuaikan padding sesuai kebutuhan
          child: Icon(
            icon,
            color: AppColors.contrast,
          ),
        ),
      ),
    );


  }
}




class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const CustomAppBar({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 16.0;
    return Expanded(
      child: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(32),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(size.width * (padSize / size.width),),
            child: Row(
              children: [
                Icon(icon),
                SizedBox(width: size.width * (padSize / size.width),),
                Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class RowQuickAccess extends StatelessWidget {
  final String desc;
  final String imageAssetPath;
  final IconData icon;

  const RowQuickAccess({Key? key, required this.desc, required this.imageAssetPath, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 15.0;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(imageAssetPath),
            SizedBox(width: size.width * (padSize / size.width),),
            Text(
              desc,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Icon(
          icon,
          size: size.width * (padSize / size.width) ,
        ),
      ],
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
  static const Color purpleImgMenu =  Color(0xFF87027B);
  static const Color blueConMenu = Color(0xFFD8F2F9);
  static const Color blueImgMenu = Color(0xFF0AAFD9);
  static const Color blackMoreMenu = Color(0xFFEDEDED);
  static const Color main = Color(0xffF2CE18);
  static const Color contrasmain = Color(0xff000000);
  static const Color contrast = Color(0xffffffff);
  static const Color background = Color(0xff1b1b1b);
  static const Color card = Color(0xff292929);
  static const Color cardDark =  Color(0xff222222);
  static const Color disabled = Color(0xff888888);
  static const Color Green = Color(0xff23c552);
  static const Color red = Color(0xfff84f31);
}





class shopCon extends StatelessWidget {
  final String imagePath;
  final String title;

  final String imageAssetPath;

  shopCon({
    required this.imagePath,
    required this.title,
    required this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.card
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Center(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(imagePath),
                              SizedBox(height: 5,),
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(flex: 3,
                        child:
                        Container(
                          height: 60,
                          width: 250,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))
                          ),
                          child: Image.asset(
                            imageAssetPath,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}

class judulPage extends StatelessWidget {
  final String title;
  final String title1;

  const judulPage({Key? key, required this.title, required this.title1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w900,
              fontFamily: 'Lato',
            ),),
            Text(  title1,
              style: TextStyle(
                color: AppColors.disabled,
                fontFamily: 'Roboto',
                fontSize: 12,
              ),)
          ],
        )
    );
  }
}


class promoPage extends StatelessWidget {
  final String imageAssetPath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;


  const promoPage({Key? key, required this.imageAssetPath, required this.text1, required this.text2, required this.text3, required this.text4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      child: Row(
          children: [
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        ),
                        child: Image.asset(imageAssetPath, fit: BoxFit.cover,),
                      ),
                    ),

                    Flexible(
                      flex: 3,
                      child: Container(
                          padding: EdgeInsets.all(7),
                          height: 60,
                          width: 233,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                text1, style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.disabled,
                                  fontFamily: 'Roboto'
                              ),
                              ),
                              Text(
                                text2, style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontFamily: 'Roboto'
                              ),
                              ),
                              Text(
                                text3, style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.main,
                                  fontFamily: 'Roboto'
                              ),
                              ),
                            ],
                          )
                      ),
                    ),


                    Flexible(
                        flex: 1,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: AppColors.Green,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))
                          ),
                          child: Center(
                            child: Text(
                              text4, style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'
                            ),
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}
