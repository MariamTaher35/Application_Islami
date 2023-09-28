import 'package:flutter/material.dart';

import 'hadeth_view.dart';

class HadethDetails extends StatefulWidget {
  HadethDetails({super.key});

  static const String routName = "Hadeth_details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var madiaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var arg = ModalRoute.of(context)?.settings.arguments as HadethContent;

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
              Text(
                arg.title,
                style: theme.textTheme.bodyLarge,
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
                    arg.content,
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
}
