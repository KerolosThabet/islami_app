import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language == 'en'?"English":"العربية"),
          SizedBox(
            height: 10,
          ),
          InkWell(onTap: () {
            Navigator.pop(context);
            provider.ChangeLanguage(provider.language =='en'?"ar":"en");
          },
              child: getUnselectyedItem(provider.language == 'en'?"العربية":"English"))
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(theme, style: Theme.of(context).textTheme.bodyMedium),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.primary,
        )
      ],
    );
  }

  Widget getUnselectyedItem(String theme) {
    return Text(theme, style: Theme.of(context).textTheme.bodySmall);
  }
}
