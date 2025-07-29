import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/hadithPage/hadithContant.dart';
import 'package:islami/hadithPage/hadithPage.dart';

// ignore: must_be_immutable
class haithDetails extends StatelessWidget {
  HadithContant hadith;
  haithDetails({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(hadithContant.routeName, arguments: hadith);
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: MyColors.PrimeryColor,
            child: Text(
              '1',
              // index.toString(),
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
          title: Text(
            //  textAlign: TextAlign.center,
            hadith.title,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ));
  }
}
