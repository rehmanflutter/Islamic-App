import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/providers/App_config_provider.dart';
import 'package:provider/provider.dart';

class sebhapage extends StatefulWidget {
  @override
  State<sebhapage> createState() => _sebhapageState();
}

class _sebhapageState extends State<sebhapage> {
  int counter = 0;

  String contant = "سبحان الله";

  List<String> tasabeh = ["سبحان الله", "الحمد لله", "الله اكبر"];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        FadeInDown(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.00,
                  child: provider.isDark()
                      ? Image.asset(
                          "assets/images/head of seb7a (1).png",
                          color: Colors.green,
                          height: 150,
                        )
                      : Image.asset(
                          "assets/images/head of seb7a.png",
                          color: Colors.green,
                          height: 150,
                        ),
                ),
                InkWell(
                  onTap: change,
                  child: provider.isDark()
                      ? Image.asset(
                          "assets/images/body of seb7a (1).png",
                          color: Colors.green,
                          height: 400,
                        )
                      : Image.asset(
                          color: Colors.green,
                          "assets/images/body of seb7a.png",
                          height: 320,
                        ),
                ),
              ],
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          "عدد التسبيحات",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        FadeInUp(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            margin: EdgeInsets.symmetric(horizontal: 160),
            decoration: BoxDecoration(
                color: provider.isDark()
                    ? MyColors.PrimeryDarkColor
                    : MyColors.PrimeryColor,
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              textAlign: TextAlign.center,
              "$counter",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FadeInDown(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            margin: EdgeInsets.symmetric(horizontal: 120),
            decoration: BoxDecoration(
                color:
                    provider.isDark() ? MyColors.yellow : MyColors.PrimeryColor,
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              textAlign: TextAlign.center,
              contant,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  change() {
    counter++;
    if (counter == 33) {
      contant = tasabeh[1];
    } else if (counter == 66) {
      contant = tasabeh[2];
    } else if (counter == 99) {
      contant = tasabeh[0];
    } else if (counter == 100) {
      counter = 0;
    }
    setState(() {});
  }
}
