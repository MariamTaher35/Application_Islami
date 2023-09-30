import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';
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
    var detail = Provider.of<MyProvider>(context);
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
              Text(
                arg.title,
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: theme.colorScheme.onPrimary),
              ),
              Divider(
                color: theme.colorScheme.onPrimary,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 5,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    arg.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.colorScheme.onPrimary),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
