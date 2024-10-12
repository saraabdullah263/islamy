import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/UI/screens/hadeth_screen.dart';
import 'package:islamy_app/comman/app_image.dart';

class HadeathTab extends StatefulWidget {
  const HadeathTab({super.key});

  @override
  State<HadeathTab> createState() => _HadeathTabState();
}

class _HadeathTabState extends State<HadeathTab> {
  List<HadethModle> hadeathModelList = [];
  @override
  Widget build(BuildContext context) {
    if (hadeathModelList.isEmpty){ 
      LoadHadeeth();
    }
    return Column(
      children: [
        Image.asset(
          AppImage.hadethscreenlogo,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: hadeathModelList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        hadeathModelList[index].name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    trailing: Container(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                HadethScreen.routeName,
                                arguments: hadeathModelList[index]);
                          },
                          child: Icon(
                            Icons.play_arrow,
                            size: 35,
                          )),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  LoadHadeeth() async {
    List<HadethModle> _hadeathModelList = [];
    String data = await rootBundle.loadString('assets/hadeath/ahadeth.txt');
    List<String> hadethList = data.trim().split('#');
    hadethList.removeWhere((Element) => Element.trim().isEmpty);
    for (var i = 0; i < hadethList.length; i++) {
      int index = hadethList[i].trim().indexOf('\n');
      String name = hadethList[i].trim().substring(0, index);
      String contant = hadethList[i].trim().substring(index+1);
      _hadeathModelList.add(HadethModle(content: contant, name: name));
    }
    hadeathModelList = _hadeathModelList;
    setState(() {});
  }
}

class HadethModle {
  String name;
  String content;
  HadethModle({required this.content, required this.name});
}
