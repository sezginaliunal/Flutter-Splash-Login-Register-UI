import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: MyColors.navyBlue.toColor(), fontWeight: FontWeight.w600),
    );
  }
}
