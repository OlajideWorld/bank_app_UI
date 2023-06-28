import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/sizes.dart';

class InputTextField extends StatefulWidget {
  final bool obscureText;
  final bool password;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final bool textInputAction;
  final String? hintText;
  final int? maxlines;

  const InputTextField({
    Key? key,
    required this.obscureText,
    this.textInputAction = false,
    this.controller,
    this.password = false,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.maxlines,
    this.onChanged,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      maxLines: widget.obscureText == false ? widget.maxlines : 1,
      minLines: null,
      expands: widget.obscureText == false ? true : false,
      textInputAction:
          !widget.textInputAction ? TextInputAction.next : TextInputAction.done,
      obscureText: widget.obscureText ? !_passwordVisible : false,
      decoration: InputDecoration(
          filled: true,
          fillColor: whitecolor,
          hintText: widget.hintText,
          hintStyle:
              TextStyle(fontSize: fontSize(14), fontWeight: FontWeight.w400),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: maincolor),
          ),
          suffixIcon: widget.password
              ? IconButton(
                  icon: _passwordVisible
                      ? Icon(
                          Icons.visibility_outlined,
                          color: maincolor,
                          size: heightSize(23),
                        )
                      : Icon(
                          Icons.visibility_off_outlined,
                          color: maincolor,
                          size: heightSize(23),
                        ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
          contentPadding: EdgeInsets.only(
              bottom: heightSize(10), left: widthSize(17), top: heightSize(19)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: textcolor3),
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
