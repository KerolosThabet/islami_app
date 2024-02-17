import 'package:flutter/material.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';

import 'Hadeth_details/Hadeth_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'Islamy App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:  Color(0xffB7935F),
          selectedItemColor: Colors.black,
           unselectedItemColor: Colors.white,

          unselectedIconTheme:
          IconThemeData(
            size: 25
          ),
          selectedIconTheme:
          IconThemeData(size: 32)
        ),

        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor:  Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 28 ,
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          onPrimary:Colors.white ,
          secondary:Color(0xffB7935F).withOpacity(.57) ,
          onSecondary:Colors.black ,
        ),


      ),

      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (_) => HomeScreen(),
        QuranDetailsScreen.route :(_)=> QuranDetailsScreen(),
        HadethDetailsScreen.route :(_)=> HadethDetailsScreen()
      },

    );
  }
}



