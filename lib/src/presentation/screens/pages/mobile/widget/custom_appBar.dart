import 'package:flutter/material.dart';
import 'package:linkedin_ui/src/presentation/screens/widgets/style/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget {
  final SizingInformation sizingInformation;

  const CustomAppBar({required Key key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      height: sizingInformation.screenSize.height * 0.10,
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Image.asset("assets/img/profile.jpg")),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 0,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Icon(
                    Icons.menu,
                    color: blueColor,
                    size: 14,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 35,
            width: sizingInformation.screenSize.width / 1.40,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.white70),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  suffixIcon: Icon(Icons.qr_code, color: Colors.black87)),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  "assets/icons/message_icon_1.png",
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
