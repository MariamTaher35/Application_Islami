import 'package:flutter/material.dart';

class RadioApp extends StatelessWidget {
  const RadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Container(
      color: Colors.transparent,
      height: double.infinity,
      width: double.infinity,
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/images/radiopic.png"),
            SizedBox(height: 40),
            Text(
              "إذاعة القرآن الكريم",
              style: them.textTheme.bodyMedium,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(
                left: 130,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.play_arrow_rounded,
                    size: 50,
                    color: them.primaryColor,
                  ),
                  Icon(
                    Icons.pause,
                    size: 50,
                    color: them.primaryColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
