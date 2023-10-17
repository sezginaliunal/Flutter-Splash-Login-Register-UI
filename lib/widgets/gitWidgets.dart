import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';

class GitWidgets extends StatefulWidget {
  const GitWidgets(
      {super.key,
      required this.imgUrl,
      required this.text,
      required this.onTap});
  final String imgUrl;
  final String text;
  final VoidCallback onTap;

  @override
  State<GitWidgets> createState() => _GitWidgetsState();
}

class _GitWidgetsState extends State<GitWidgets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: MyColors.grey.toColor())),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.imgUrl),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.text),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
