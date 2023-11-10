import 'package:flutter/material.dart';
import 'package:air_pay/extensions.dart';
import 'package:air_pay/variables/colorpalette.dart';

class myTextField extends StatefulWidget {
  final bool isObscured;
  final String? hintText;
  final TextEditingController? textEditingController;
  const myTextField({
    super.key,
    this.isObscured = false,
    this.hintText,
    this.textEditingController,
  });

  @override
  myTextFieldState createState() => myTextFieldState();
}
class myTextFieldState extends State<myTextField> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: TextStyle(color: darkcolor['contrast']),
      controller: widget.textEditingController,
      obscureText: widget.isObscured ? isChecked : widget.isObscured,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: darkcolor["cardDark"],
        filled: true,
        hintStyle: TextStyle(
            color: darkcolor['disabled'], fontWeight: FontWeight.normal),
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
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
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
            prefixIcon == null ? const SizedBox(width: 0) : Icon(prefixIcon),
            isExpand
                ? Expanded(child: Text(text, textAlign: textAlign))
                : Text(text, textAlign: textAlign),
            suffixIcon == null ? const SizedBox(width: 0) : Icon(suffixIcon),
          ],
        ),
      ),
    );
  }
}
