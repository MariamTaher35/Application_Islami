import 'package:app_2/modules/quran/quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  static const String routName = "quran_details";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var madiaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetail;
    var detail = Provider.of<MyProvider>(context);
    // asynchronous
    if (content.isEmpty) readFiles(arg.surenumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(detail.Background()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "إسلامي",
              style: theme.textTheme.bodyMedium,
            )),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 80),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          width: madiaquery.width,
          height: madiaquery.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  سورة${arg.suraname}",
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.onPrimary),
                ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.play_circle,
                  size: 32,
                  color: theme.colorScheme.onPrimary,
                )
                  ],
                ),
                Divider(
                  color: theme.colorScheme.onSecondary,
              indent: 30,
              endIndent: 30,
              thickness: 1.2,
              height: 5,
            ),
                Expanded(
              child: ListView(children: [
                Text(
                  //  "${lines[index]} (${index+1})",
                  content,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onPrimary, height: 1.5),
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");

    content = text;
    setState(() {
      lines = content.split("\n");
    });
    print(text);
  }
}
