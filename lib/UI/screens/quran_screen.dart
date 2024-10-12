import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/UI/tabs/guran_tab.dart';
import 'package:islamy_app/comman/app_image.dart';

class QuranScreen extends StatefulWidget {
  static const String routeName = 'quranscreen';
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> vircies = [];
  @override
  Widget build(BuildContext context) {
    QuranModle quranModle =
        ModalRoute.of(context)!.settings.arguments as QuranModle;
       if(vircies.isEmpty) LoadSuraContant(quranModle.index);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.bglightimage), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text('Islamy'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .09,
                horizontal: MediaQuery.of(context).size.width * .05),
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .02,
                horizontal: MediaQuery.of(context).size.width * .05),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(.8),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  quranModle.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10,),
                Divider(
                    height: 2,
                    indent: MediaQuery.of(context).size.width * .09,
                    endIndent: MediaQuery.of(context).size.width * .09),
                    SizedBox(height: 5,),
                vircies.isEmpty ? Expanded(child: Center(child: CircularProgressIndicator()))
                : Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) => Text(vircies[index],style: Theme.of(context).textTheme.titleSmall,textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
                  itemCount: vircies.length,
                ))
              ],
            ),
          ),
        ));
  }

 Future<void> LoadSuraContant(int index) async {
    String data = await rootBundle.loadString('assets/quran/${index+1 }.txt');
    vircies = data.split('\n');
    setState(() {});
  }
}
