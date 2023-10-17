import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';

class TitleSubtitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleSubtitleWidget(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: MyColors.black.toColor()),
        ),
        Text(
          subtitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: MyColors.grey.toColor()),
        ),
      ],
    );
  }
}
