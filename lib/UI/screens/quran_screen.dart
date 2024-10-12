import 'package:flutter/material.dart';
import 'package:islamy_app/comman/app_image.dart';

class QuranScreen extends StatelessWidget {
  static const String routeName = 'quranscreen';
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
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
              onPressed: () {},
            ),
            title: Text('Islamy'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .09,
                horizontal: MediaQuery.of(context).size.width * .05),
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .09,
                horizontal: MediaQuery.of(context).size.width * .05),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(.8),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Divider(
                    height: 2,
                    indent: MediaQuery.of(context).size.width * .09,
                    endIndent: MediaQuery.of(context).size.width * .09)
              ],
            ),
          ),
        ));
  }
}
