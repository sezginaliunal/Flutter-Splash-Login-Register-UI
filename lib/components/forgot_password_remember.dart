import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/constants/strings.dart';

// ignore: must_be_immutable
class ForgotPasswordRememberMe extends StatefulWidget {
  bool value;
  ForgotPasswordRememberMe({super.key, required this.value});

  @override
  State<ForgotPasswordRememberMe> createState() =>
      _ForgotPasswordRememberMeState();
}

class _ForgotPasswordRememberMeState extends State<ForgotPasswordRememberMe> {
  void checkValue(bool? newValue) {
    setState(() {
      widget.value = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: MyColors.black.toColor(),
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return MyColors.white.toColor().withOpacity(.32);
                }
                return MyColors.white.toColor();
              }),
              value: widget.value,
              onChanged: checkValue,
            ),
            Text(
              rememberMe,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: MyColors.black.toColor(), fontWeight: FontWeight.w400),
            )
          ],
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              forgotPassword,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: MyColors.red.toColor(), fontWeight: FontWeight.normal),
            )),
      ],
    );
  }
}
