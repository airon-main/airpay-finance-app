import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';

class myTextField extends StatefulWidget {
  const myTextField(
      {super.key,
      this.isObscured = false,
      this.hintText,
      this.textEditingController,
      this.backgroundColor = const Color(0xff222222),
      this.foregroundColor = const Color(0xffffffff),
      this.hintColor = const Color(0xffF2CE18),
      this.label = "",
      this.labelWidth});
  final bool isObscured;
  final String? hintText;
  final TextEditingController? textEditingController;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color hintColor;
  final String label;
  final double? labelWidth;

  @override
  myTextFieldState createState() => myTextFieldState();
}

class myTextFieldState extends State<myTextField> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: widget.labelWidth,
          child: Text(
            widget.label,
            style: TextStyle(color: darkcolor['disabled']),
          ),
        ),
        Expanded(
          child: TextField(
            autofocus: false,
            style: TextStyle(color: darkcolor['contrast']),
            controller: widget.textEditingController,
            obscureText: widget.isObscured ? isChecked : widget.isObscured,
            decoration: InputDecoration(
              hintText: widget.hintText,
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
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: darkcolor['main'], width: 0.5),
              ),
            ),
          ),
        ),
      ],
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
  });
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String text;
  final TextAlign textAlign;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool isExpand;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
    this.textAlign = TextAlign.start,
    this.backgroundColor = const Color(0xff292929),
    this.foregroundColor = const Color(0xffffffff),
    required this.onClick,
  });
  final double? height;
  final double? width;
  final IconData? icon;
  final String text;
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
            image: const DecorationImage(
              image: AssetImage('assets/images/pln.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
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
