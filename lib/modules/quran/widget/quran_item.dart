import 'package:flutter/material.dart';

class QuarnItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuarnItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraNumber,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
        Container(
          width: 1.2,
          height: 45,
          color: theme.colorScheme.secondary,
        ),
        Expanded(
            child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
      ],
    );
  }
}
