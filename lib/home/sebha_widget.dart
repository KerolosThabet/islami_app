import 'package:flutter/material.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({super.key});

  @override
  State<SebhaWidget> createState() => SebhaWidgetState();
}

class SebhaWidgetState extends State<SebhaWidget> {
  int counter = 0;
  int index = 0;

  List<String> Azakr = [
    "سبحان الله ",
    "الحمد الله",
    "الله اكبر",
    "استغفر الله"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage("assets/images/head_of_seb7a.png")),
        InkWell(
          onTap: () {
            setState(() {
              counter++;
              if (counter == 33) {
                index++;
                counter = 0;
              }
              if (index == 4) {
                index = 0;
              }
            });
          },
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(counter / 33),
            child: Image(
              image: AssetImage("assets/images/body_of_seb7a.png"),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(40)),
          child: Text("$counter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 150,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(40)),
          child: Text("${Azakr[index]}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary)),
        ),
      ],
    );
  }
}
