import 'package:flutter/material.dart';
import 'package:linkedin_ui/src/presentation/screens/widgets/style/theme.dart';

Widget rowSingleButton(
    {required String name,
    required String iconImage,
    required Color color,
    required bool isHover}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
    decoration: BoxDecoration(
        color: isHover ? Colors.black.withOpacity(.1) : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(4))),
    child: Row(
      children: [
        Container(
          width: 28,
          height: 28,
          child: Image.asset(
            iconImage,
            color: color,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget rowSinglePostButton(
    {required String iconImage, required Color color, required bool isHover}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
    decoration: BoxDecoration(
        color: isHover ? Colors.black.withOpacity(.1) : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(4))),
    child: Container(
      width: 28,
      height: 28,
      child: Image.asset(
        iconImage,
        color: color,
      ),
    ),
  );
}
