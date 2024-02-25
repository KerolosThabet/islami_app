
import 'package:flutter/material.dart';
import 'package:islamy_app/home/tabs/ahadeth_widget.dart';
import 'package:islamy_app/home/tabs/quran_widget.dart';
import 'package:islamy_app/home/tabs/radio_widget.dart';
import 'package:islamy_app/home/tabs/sebha_widget.dart';
import 'package:islamy_app/home/tabs/settings_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import '../style/app_theme.dart';


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
   SettingsWidget()
  ];
class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    SettingProvider providerTheme = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(providerTheme.theme == ThemeMode.dark?
              "assets/images/Dark_bg.png"
                  :"assets/images/bg3.png"),
            fit: BoxFit.fill
          ),
      ),

      child: Scaffold(
        appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islamy)
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
                label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label:  AppLocalizations.of(context)!.sebha
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth_icon.png")),
                  label:  AppLocalizations.of(context)!.ahadeth
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                  label:  AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(Icons.settings),
                  label:  AppLocalizations.of(context)!.settings
              ),

            ]
        ),

        body: navWidget[currentNavIndex] ,
      ),
    );
  }
}
