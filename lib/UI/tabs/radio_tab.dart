import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/comman/app_image.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.12,horizontal: 10),
      child: Column(
        children: [
          Image.asset(AppImage.radioImage),
          SizedBox(height: MediaQuery.of(context).size.height*.08,),
          Text(
            'اذاعة القران الكريم',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.06,)
      ,        Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 50,
                ),
                Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 50,
                ),
                Icon(
                  Icons.skip_next,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
