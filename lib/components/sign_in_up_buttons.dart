import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';

class LoginSignUpButton extends StatefulWidget {
  const LoginSignUpButton(
      {super.key, required this.onPressed, required this.child});
  final VoidCallback onPressed;
  final String child;
  @override
  State<LoginSignUpButton> createState() => _LoginSignUpButtonState();
}

class _LoginSignUpButtonState extends State<LoginSignUpButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.purple.toColor()),
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.child,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: MyColors.white.toColor()),
          ),
        ));
  }
}
