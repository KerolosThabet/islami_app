import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingProvider providerTheme = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          getSelectedItem(providerTheme.theme== ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light),

          SizedBox(height: 10,),

          InkWell(
            onTap: () {
              Navigator.pop(context);
              providerTheme.ChangeTheme(providerTheme.theme== ThemeMode.dark?ThemeMode.light:ThemeMode.dark);
            },
              child: getUnselectyedItem(providerTheme.theme== ThemeMode.dark?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark))
        ],
      ),
    );
}

  Widget getSelectedItem(String theme ){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(theme,style:Theme.of(context).textTheme.bodyMedium),
        Icon(Icons.check,color:Theme.of(context).colorScheme.primary ,)
      ],
    );
  }

  Widget getUnselectyedItem (String theme){
    return Text(theme,style:Theme.of(context).textTheme.bodySmall);
  }
}

