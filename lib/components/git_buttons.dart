import 'package:flutter/material.dart';
import 'package:login_ui/constants/assets.dart';
import 'package:login_ui/constants/sizedBox.dart';
import 'package:login_ui/constants/strings.dart';
import 'package:login_ui/widgets/gitWidgets.dart';

class GitButtons extends StatelessWidget {
  const GitButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GitWidgets(imgUrl: gitHubPath, text: gitHub, onTap: () {}),
        MyWidths.medium.toWidths(),
        GitWidgets(imgUrl: gitLabPath, text: gitLab, onTap: () {}),
      ],
    );
  }
}
