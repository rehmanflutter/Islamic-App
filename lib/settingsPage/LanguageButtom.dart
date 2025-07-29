import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class languagebuttom extends StatefulWidget {
  const languagebuttom({super.key});

  @override
  State<languagebuttom> createState() => _languagebuttomState();
}

class _languagebuttomState extends State<languagebuttom> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: provider.AppLanguage == "en"
                ? getSelectedLanguage("English")
                : unSelectedLanguag(AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: provider.AppLanguage == "ar"
                ? getSelectedLanguage(AppLocalizations.of(context)!.arabic)
                : unSelectedLanguag(AppLocalizations.of(context)!.arabic),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }

  Widget getSelectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.black),
        ),
        Icon(
          Icons.check,
          size: 35,
          color: MyColors.PrimeryColor,
        ),
      ],
    );
  }

  Widget unSelectedLanguag(String text) {
    return Text(
      text,
    );
  }
}
