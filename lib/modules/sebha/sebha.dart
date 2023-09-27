import 'package:flutter/material.dart';

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
                Positioned(
                    left: size.width * .28,
                    child: Image.asset(
                      "assets/images/head.png",
                      width: 70,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: onPressed,
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(
                            "assets/images/body.png",
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
                  color: Color(0xFFB7935F).withOpacity(0.57),
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
                  color: Color(0xFFB7935F),
                ),
                child: Text(
                  "${askar[currentIndex]}",
                  style: them.textTheme.bodySmall,
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
