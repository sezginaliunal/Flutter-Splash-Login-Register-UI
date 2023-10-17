import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';

class TextFieldComponent extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool isPassword;
  final Widget? prefixIcon;

  const TextFieldComponent({
    Key? key,
    required this.controller,
    this.hintText,
    this.isPassword = false,
    this.prefixIcon,
  }) : super(key: key);

  @override
  _TextFieldComponentState createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  final FocusNode _focusNode = FocusNode();
  bool isFocused = false;
  bool isPasswordVisible = true;
  String selectedAreaCode = '+1';
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      obscureText: widget.isPassword && !isPasswordVisible,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                !isFocused ? MyColors.grey.toColor() : MyColors.black.toColor(),
          ),
        ),
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                !isFocused ? MyColors.grey.toColor() : MyColors.black.toColor(),
          ),
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: MyColors.black.toColor()),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
