import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0;
  int counter = 0;
  int currentIndex = 0;
  List<String> askar = [
    "سبحان اللٌه",
    "اللٌه أكبر",
    "أستغفر اللٌه",
    "الحمد لله",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var them = Theme.of(context);
    var sabha = Provider.of<MyProvider>(context);

    return Container(
      color: Colors.transparent,
      height: double.infinity,
      width: double.infinity,
      child: Container(
        height: size.height * .40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  child: Positioned(
                      left: size.width * .28,
                      child: Image.asset(
                        sabha.headsabha(),
                        width: 70,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: onPressed,
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(
                            sabha.boadysabha(),
                            width: 200,
                          ))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "عدد التسبيحات",
                style: them.textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: them.colorScheme.primary.withOpacity(0.57),
                ),
                child: Text("$counter"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                width: 137,
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: them.colorScheme.secondary,
                ),
                child: Text(
                  "${askar[currentIndex]}",
                  style: them.textTheme.bodySmall!
                      .copyWith(color: them.colorScheme.onSurface),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onPressed() {
    angle -= 2;
    counter++;
    if (counter == 34) {
      currentIndex++;
      counter = 0;
    }
    if (currentIndex > askar.length - 1) {
      currentIndex = 0;
    }
    setState(() {});
  }
}
