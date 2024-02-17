import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.Title),
        ),
        body: Card(
            margin: EdgeInsets.all(20),
            elevation: 30,
            color: Colors.white,
            child:lines.isNotEmpty ?ListView.separated(
                itemBuilder:
                    (context, index) => Text(
                      "${lines[index]} (${index+1})",
                      textDirection: TextDirection.rtl ,
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                separatorBuilder: (context, index) => Container(
                      height: 2,
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
