import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/settingsPage/LanguageButtom.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:islami/settingsPage/themebuttom.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

// ignore: camel_case_types
class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            FadeInRight(child: Text(AppLocalizations.of(context)!.languages)),
            const SizedBox(
              height: 12,
            ),
            FadeInLeft(
              child: InkWell(
                onTap: () {
                  showLanguageButtomSheet();
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.PrimeryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        provider.AppLanguage == "en"
                            ? AppLocalizations.of(context)!.english
                            : AppLocalizations.of(context)!.arabic,
                        style: TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            FadeInLeft(
              child: Text(
                AppLocalizations.of(context)!.theme,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInRight(
              child: InkWell(
                onTap: () {
                  showThemeButtomSheet();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.PrimeryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        provider.isDark()
                            ? AppLocalizations.of(context)!.dark
                            : AppLocalizations.of(context)!.light,
                        style: TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.green.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: true,
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: languagebuttom(),
            ));
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green.shade100,
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: themebuttom(),
            ));
  }
}
