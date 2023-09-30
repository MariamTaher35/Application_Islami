import 'package:app_2/bottom_sheets/show_language_bottomsheet.dart';
import 'package:app_2/bottom_sheets/show_theme_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyLarge,
          ),
          GestureDetector(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              height: 70,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: theme.colorScheme.secondary,
                    width: 2.2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.local == "en" ? "English" : "عربي"),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.colorScheme.secondary,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            AppLocalizations.of(context)!.theme_mode,
            textAlign: TextAlign.start,
            style: theme.textTheme.bodyLarge,
          ),
          GestureDetector(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              height: 70,
              width: mediaQuery.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: theme.colorScheme.secondary,
                    width: 2.2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.currenttheme == ThemeMode.dark &&
                          provider.local == "en"
                      ? "Dark"
                      : provider.currenttheme == ThemeMode.light &&
                              provider.local == "en"
                          ? "Light"
                          : provider.currenttheme == ThemeMode.dark &&
                                  provider.local == "ar"
                              ? "ليلي"
                              : "نهاري"),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.colorScheme.secondary,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )),
        builder: (context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )),
        builder: (context) => ThemeBottomSheet());
  }
}
