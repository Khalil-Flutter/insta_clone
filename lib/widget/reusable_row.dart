import 'package:flutter/material.dart';

import '../common/colors.dart';

class ReuseAbleRow extends StatelessWidget {
  const ReuseAbleRow({super.key, required this.firstIcon, required this.text});

  final Widget firstIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          firstIcon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(color: white, fontSize: 17),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: white,
          )
        ],
      ),
    );
  }
}
