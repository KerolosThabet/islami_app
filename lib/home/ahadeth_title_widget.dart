import 'package:flutter/material.dart';
import 'package:islamy_app/home/ahadeth_model.dart';

import '../Hadeth_details/Hadeth_details_screen.dart';

class AhadethTitleWidget extends StatelessWidget {
  ahadethModel Hadeth;
   AhadethTitleWidget({super.key,required this.Hadeth});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.route,arguments: Hadeth);
      },
      child: Text(
        Hadeth.title,
        textAlign: TextAlign.center,
        style:  Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
