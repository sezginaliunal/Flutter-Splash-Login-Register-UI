import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/constants/sizedBox.dart';

class AccountButton extends StatefulWidget {
  const AccountButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.text2});
  final String text;
  final String text2;
  final VoidCallback onTap;

  @override
  State<AccountButton> createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: MyColors.grey.toColor())),
        MyWidths.small.toWidths(),
        TextButton(
            onPressed: widget.onTap,
            child: Text(
              widget.text2,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: MyColors.purple.toColor()),
            ))
      ],
    );
  }
}
