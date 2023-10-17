import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/constants/sizedBox.dart';
import 'package:login_ui/constants/strings.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Divider(
            color: MyColors.black.toColor(),
          ),
        ),
        MyWidths.large.toWidths(),
        Text(orWith,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold)),
        MyWidths.large.toWidths(),
        Expanded(
          child: Divider(
            color: MyColors.black.toColor(),
          ),
        ),
      ],
    );
  }
}
