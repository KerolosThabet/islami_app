import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/home/ahadeth_title_widget.dart';

import 'ahadeth_model.dart';

class AhadethWidget extends StatefulWidget {


  @override
  State<AhadethWidget> createState() => _AhadethWidgetState();
}

class _AhadethWidgetState extends State<AhadethWidget> {
  @override
  Widget build(BuildContext context) {
  if(allAhadeth.isEmpty){
    loadAhadethFile();
  }

    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image(image: AssetImage('assets/images/ahadeth_image.png'))),

        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2.5,
                color: Theme.of(context).colorScheme.primary),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("الأحاديث",style: TextStyle(fontSize: 25)),
            ],
          ),
        ),

        Expanded(
          flex: 3,
            child:allAhadeth.isEmpty
             ?Center(child: CircularProgressIndicator(),)
             :ListView.separated(
                itemBuilder: (context, index) =>AhadethTitleWidget(Hadeth: allAhadeth[index]),
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    height: 2,
                    width: 2,
                    color: Theme.of(context).colorScheme.primary,
                  );
                },
                itemCount: allAhadeth.length)
        )

      ],
    );
  }

  List <ahadethModel> allAhadeth =  [];

  void loadAhadethFile () async {
    String ahadethContent =await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList = ahadethContent.trim().split('#');
    for(int i=0 ; i<ahadethList.length ;i++){
      List<String> oneHadeth = ahadethList[i].trim().split('\n');
      String hadethTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(" ");

      allAhadeth.add(ahadethModel(title: hadethTitle, content: hadethContent));
    }
    setState(() {

    });
  }
}
