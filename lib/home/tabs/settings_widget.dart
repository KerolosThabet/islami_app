import 'package:flutter/material.dart';
import 'package:islamy_app/home/tabs/theme_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider.dart';
import 'language_sheet.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);

    return Padding(

      padding: const EdgeInsets.all(13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(provider.language== "ar"? "العربية":"Language",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          SizedBox(height: 10,),

          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:  Border.all(color:Theme.of(context).colorScheme.primary )
                        ,borderRadius: BorderRadius.circular(20)
                ),
              padding: EdgeInsets.all(10),
                child:
                Text(AppLocalizations.of(context)!.language,style: TextStyle(fontSize: 18,))
            ),
          ),

          SizedBox(height: 20,),

          Text(AppLocalizations.of(context)!.theme,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          SizedBox(height: 10,),

          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                    border:  Border.all(color:Theme.of(context).colorScheme.primary )
                    ,borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.all(10),
                child:
                Text(provider.theme== ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,style: TextStyle(fontSize: 18,))
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return ThemeSheet() ;
    },);
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageSheet();
    },);
  }
}
