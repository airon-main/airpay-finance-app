import 'package:air_pay/variables/transaction.dart';
import 'package:air_pay/widgets/customController.dart';
import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class myTextField extends StatefulWidget {
  const myTextField({
    super.key,
    this.isObscured = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.backgroundColor = const Color(0xff222222),
    this.foregroundColor = const Color(0xffffffff),
    this.hintColor = const Color(0xffF2CE18),
    this.labelText = "",
  });
  final bool isObscured;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color hintColor;
  final String labelText;

  @override
  myTextFieldState createState() => myTextFieldState();
}

class myTextFieldState extends State<myTextField> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      autofocus: false,
      style: TextStyle(color: darkcolor['contrast'], fontSize: 14),
      controller: widget.controller,
      obscureText: widget.isObscured ? isChecked : widget.isObscured,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(color: darkcolor['disabled'], fontSize: 14),
        fillColor: darkcolor["carddark"],
        filled: true,
        hintStyle: TextStyle(
            color: darkcolor['disabled'],
            fontWeight: FontWeight.normal,
            fontSize: 14),
        suffixIcon: widget.isObscured
            ? IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  isChecked ? Icons.visibility : Icons.visibility_off,
                  color: darkcolor['disabled'],
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              )
            : null,
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkcolor['card']),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkcolor['main']),
        ),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  const myButton({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.text = "",
    this.textAlign = TextAlign.start,
    this.backgroundColor = const Color(0xff292929),
    this.foregroundColor = const Color(0xffffffff),
    this.isExpand = true,
    required this.onClick,
    this.label = "",
    this.labelWidth,
  });
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String text;
  final TextAlign textAlign;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool isExpand;
  final VoidCallback onClick;
  final String label;
  final double? labelWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(
            label,
            style: TextStyle(color: darkcolor['disabled']),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 48,
            child: TextButton(
              onPressed: onClick,
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  backgroundColor: backgroundColor,
                  foregroundColor: foregroundColor),
              child: Row(
                children: [
                  Icon(prefixIcon),
                  const SizedBox(width: 10),
                  Expanded(
                      child: Text(
                    text,
                    textAlign: textAlign,
                    style: const TextStyle(fontSize: 14),
                  )),
                  const SizedBox(width: 10),
                  Icon(suffixIcon),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class myImageButton extends StatelessWidget {
  const myImageButton({
    super.key,
    this.height,
    this.width,
    this.icon,
    this.text = "",
    required this.imagePath,
    this.textAlign = TextAlign.start,
    this.backgroundColor = const Color(0xff292929),
    this.foregroundColor = const Color(0xffffffff),
    required this.onClick,
  });
  final double? height;
  final double? width;
  final IconData? icon;
  final String text;
  final String imagePath;
  final TextAlign textAlign;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: onClick,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                Colors.black45,
                BlendMode.darken,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ].withSpaceBetween(height: 5),
            ),
          ),
        ),
      ),
    );
  }
}

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({
    super.key,
    this.title = "",
    this.prefixWidget = const SizedBox(height: 0, width: 0),
    this.borderColor = const Color(0xff292929),
  });
  final String title;
  final Widget prefixWidget;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light, // For Android (light icons)
        statusBarBrightness: Brightness.dark, // For iOS (light icons)
      ),
      flexibleSpace: Container(
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: darkcolor['background'],
          border: Border(
            bottom: BorderSide(width: 1, color: borderColor),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            prefixWidget,
            Text(
              title,
              style: TextStyle(
                color: darkcolor['contrast'],
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.toNamed("/notification");
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class mySwitch extends StatelessWidget {
  const mySwitch({
    super.key,
    this.label = "",
    required this.controller,
  });
  final String label;
  final mySwitchController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(width: 0),
        Text(
          label,
          style: TextStyle(color: darkcolor['disabled']),
        ),
        const Spacer(),
        SizedBox(
          height: 30,
          width: 52,
          child: Obx(() => Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                inactiveTrackColor: darkcolor['card'],
                inactiveThumbColor: darkcolor['disabled'],
                activeTrackColor: darkcolor['disabled'],
                activeColor: darkcolor['contrast'],
                trackOutlineColor:
                    const MaterialStatePropertyAll<Color>(Colors.transparent),
                value: controller.on.value,
                onChanged: (val) => controller.toggle(),
              )),
        )
      ],
    );
  }
}

class myDropdown extends StatelessWidget {
  const myDropdown({
    super.key,
    required this.items,
    this.hint = "",
    this.label = "",
    this.labelWidth,
  });
  final List<DropdownMenuItem<String>>? items;
  final String hint;
  final String label;
  final double? labelWidth;

  @override
  Widget build(BuildContext context) {
    myDropdownController ctr = Get.put(myDropdownController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(
            label,
            style: TextStyle(color: darkcolor['disabled']),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: darkcolor['card'],
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              isExpanded: true,
              underline: const SizedBox(),
              iconEnabledColor: darkcolor['contrast'],
              hint: Text(hint,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: darkcolor['disabled'],
                      fontSize: 14)),
              padding: EdgeInsets.zero,
              dropdownColor: darkcolor['card'],
              style: TextStyle(color: darkcolor['contrast'], fontSize: 14),
              value: ctr.selectedValue,
              onChanged: (newValue) {
                ctr.onSelected(newValue!);
              },
              elevation: 10,
              items: items,
              // items: const [
              //   DropdownMenuItem(
              //     value: 'English',
              //     child: Text("English"),
              //   ),
              //   DropdownMenuItem(
              //     value: 'Espanol',
              //     child: Text("ESpanol"),
              //   ),
              // ]),
            ),
          ),
        ),
      ],
    );
  }
}

class myPayMetode extends StatelessWidget {
  const myPayMetode({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed("/home/selectNominalTopup");
          },
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/' + metodeData[index]['photo']),
                radius: 19,
              ),
              Expanded(
                child: Text(
                  metodeData[index]["nama"],
                  style: TextStyle(color: darkcolor['contrast']),
                ),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: darkcolor['disabled'],
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ],
    );
  }
}

class myTransfer extends StatelessWidget {
  const myTransfer({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed("/home/selectNominalTransfer");
          },
          style: TextButton.styleFrom(padding: const EdgeInsets.only(right: 5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/' + transactionData[index]['photo']),
                radius: 19,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactionData[index]["name"],
                      style: TextStyle(color: darkcolor['contrast']),
                    ),
                    Text(
                      transactionData[index]["date"],
                      style:
                          TextStyle(color: darkcolor['disabled'], fontSize: 10),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: darkcolor['disabled'],
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ],
    );
  }
}

class myWithdraw extends StatelessWidget {
  const myWithdraw({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed("/home/selectNominalWithdraw");
          },
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/' + withdrawdata[index]['photo']),
                radius: 19,
              ),
              Expanded(
                child: Text(
                  withdrawdata[index]["nama"],
                  style: TextStyle(color: darkcolor['contrast']),
                ),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: darkcolor['disabled'],
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
      ],
    );
  }
}
