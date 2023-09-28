import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFile();
    var theme = Theme.of(context);

    return Column(
      children: [
        Image.asset(
          "assets/images/pichad.png",
          width: 320,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routName,
                      arguments: HadethContent(
                          content: allHadethContent[index].content,
                          title: allHadethContent[index].title));
                },
                child: Text(
                  allHadethContent[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                )),
            itemCount: allHadethContent.length,
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              endIndent: 80,
              indent: 80,
              color: theme.primaryColor,
              height: 10,
            ),
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth");
    List<String> allhadeth = text.split("#");
    for (int i = 0; i < allhadeth.length; i++) {
      String singleHadeth = allhadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);

      HadethContent hadethContent =
          HadethContent(title: title, content: content);

      setState(() {
        allHadethContent.add(hadethContent);
      });
    }
  }
}

class HadethContent {
  final String title;

  final String content;

  HadethContent({required this.content, required this.title});
}
