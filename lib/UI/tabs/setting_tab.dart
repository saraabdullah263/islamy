import 'package:flutter/material.dart';
import 'package:islamy_app/comman/app_colors.dart';
import 'package:islamy_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SwitchListTile.adaptive(
              title: Text(
                AppLocalizations.of(context)!.darktheme,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20),
              ),
              value: provider.isDark,
              onChanged: (value) {
                provider.ChangeThemeMode(
                    value == true ? ThemeMode.dark : ThemeMode.light);
              },
              activeColor: AppColors.selecteddarkColor,
              inactiveTrackColor: Colors.grey,
              thumbColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.onSecondary,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.languages,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20)),
            trailing: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: DropdownButton(
                underline: Container(),
                value: provider.localeCode,
                dropdownColor:
                    Theme.of(context).colorScheme.secondary.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
                items: [
                  DropdownMenuItem<String>(
                    child: Text(
                      'English',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 15),
                    ),
                    value: 'en',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'عربي',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 15),
                    ),
                    value: 'ar',
                  )
                ],
                onChanged: (value) =>{
                  if (value != null) {provider.ChangeLocal(value)}
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
