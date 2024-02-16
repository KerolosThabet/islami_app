
import 'package:flutter/material.dart';
import 'package:islamy_app/home/ahadeth_widget.dart';
import 'package:islamy_app/home/quran_widget.dart';
import 'package:islamy_app/home/radio_widget.dart';
import 'package:islamy_app/home/sebha_widget.dart';

class HomeScreen extends StatefulWidget {
 static const String route = "HomeScreen" ;


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 int currentNavIndex =0;
 List<Widget> navWidget = [
   RadioWidget(),
   SebhaWidget(),
   AhadethWidget(),
   QuranWidget(),
  ];
class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg3.png"),
            fit: BoxFit.fill
          ),
      ),

      child: Scaffold(
        appBar: AppBar(
            title: Text(" اسلامي ") 
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:currentNavIndex,
            onTap: (index) {
              setState(() {
                currentNavIndex =index ;
              });
            },

            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: ''
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: ''
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth_icon.png")),
                  label: ''
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                  label: 'القرأن'
              ),
            ]
        ),

        body: navWidget[currentNavIndex] ,
      ),
    );
  }
}
