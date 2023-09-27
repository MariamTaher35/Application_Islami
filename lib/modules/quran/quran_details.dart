import 'package:app_2/modules/quran/quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    // asynchronous
    if (content.isEmpty) readFiles(arg.surenumber);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
              fit: BoxFit.cover)),
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
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  سورة${arg.suraname}",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              )
            ],
          ),
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
