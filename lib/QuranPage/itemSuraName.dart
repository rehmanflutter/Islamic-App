import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';
import 'package:islami/QuranPage/suraDetails.dart';

// ignore: must_be_immutable
class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({super.key, required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(suraDetails.routeName,
              arguments: suraDetailsArgs(name: name, index: index));
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: MyColors.PrimeryColor,
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
          title: Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge,
            //  textAlign: TextAlign.center,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ));
  }
}
