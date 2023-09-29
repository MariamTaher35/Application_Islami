import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: theme.textTheme.bodyLarge!.copyWith(
                        color: provider.local == "en"
                            ? theme.primaryColor
                            : Colors.black)),
                provider.local == "en"
                    ? Icon(
                        Icons.done,
                        color: theme.primaryColor,
                        size: 30,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: provider.local == "ar"
                            ? theme.primaryColor
                            : Colors.black)),
                provider.local == "ar"
                    ? Icon(
                        Icons.done,
                        color: theme.primaryColor,
                        size: 30,
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
