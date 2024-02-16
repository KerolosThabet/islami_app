import 'package:flutter/material.dart';

import '../quran_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  String Title ;
  String versesNumber ;
  int index ;

   QuranTitleWidget({required this.Title , required this.versesNumber,required this.index});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     Navigator.pushNamed(context, QuranDetailsScreen.route,
         arguments:QuranDetailsArgument(Title: Title, index: index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Text( Title, style: TextStyle(fontSize: 22)),
          Text( versesNumber,style: TextStyle(fontSize: 22)),
        ],
      ),
    );
  }
}
