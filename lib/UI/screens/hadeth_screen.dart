import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/hadeath_tab.dart';
import 'package:islamy_app/comman/app_image.dart';

class HadethScreen extends StatelessWidget {
  static const String routeName = 'HadethScreen';
  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModle hadethModle =
        ModalRoute.of(context)!.settings.arguments as HadethModle;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Theme.of(context).colorScheme.brightness==Brightness.light? AppImage.bglightimage:AppImage.bgdarkimage), fit: BoxFit.cover)),
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
                  hadethModle.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                    height: 2,
                    indent: MediaQuery.of(context).size.width * .09,
                    endIndent: MediaQuery.of(context).size.width * .09),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(hadethModle.content,
                        style: Theme.of(context).textTheme.titleSmall,
                        textDirection: TextDirection.rtl,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
