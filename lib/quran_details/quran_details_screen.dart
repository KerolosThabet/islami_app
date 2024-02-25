import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
import '../style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String route = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgument args =
        ModalRoute.of(context)?.settings.arguments as QuranDetailsArgument;

    if(lines.isEmpty){
      readQuranFile(args.index);
    }

    SettingProvider providerTheme = Provider.of<SettingProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(providerTheme.theme == ThemeMode.dark? "assets/images/Dark_bg.png":"assets/images/bg3.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.Title),
        ),
        body: Card(

            child:lines.isNotEmpty ?ListView.separated(
                itemBuilder:
                    (context, index) => Text(
                      "${lines[index]} (${index+1})",
                      textDirection: TextDirection.rtl ,
                        style: Theme.of(context).textTheme.bodyMedium,
                    ),
                separatorBuilder: (context, index) => Container(

                    ),
                itemCount: lines.length)
                :Center(
              child:CircularProgressIndicator()
              ,)
        ),
      ),
    );
  }

  List<String> lines = [];
  Future<void> readQuranFile(int index) async {
    String quranText =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    lines = quranText.trim().split("\n");
    setState(() {});
  }
}

class QuranDetailsArgument {
  String Title;
  int index;
  QuranDetailsArgument({required this.Title, required this.index});
}
