import 'package:flutter/material.dart';
import 'package:islamy_app/home/ahadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
import '../style/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String route = "HadethDetailsScreen";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ahadethModel hadethModel =ModalRoute.of(context)?.settings.arguments as ahadethModel ;
    SettingProvider providerTheme = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(providerTheme == ThemeMode.dark? "assets/images/Dark_bg.png":"assets/images/bg3.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Card(

            child:SingleChildScrollView(

              child: Text(
                textDirection: TextDirection.rtl,
                hadethModel.content,
                  style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
                
        ),
      ),
    );
  }
}
