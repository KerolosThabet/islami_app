import 'package:flutter/material.dart';
import 'package:islamy_app/home/ahadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String route = "HadethDetailsScreen";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ahadethModel hadethModel =ModalRoute.of(context)?.settings.arguments as ahadethModel ;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Card(
            margin: EdgeInsets.all(20),
            elevation: 30,
            color: Colors.white,
            child:SingleChildScrollView(

              child: Text(
                textDirection: TextDirection.rtl,
                hadethModel.content,
                  style: TextStyle( fontSize: 20),
              ),
            )
                
        ),
      ),
    );
  }
}
