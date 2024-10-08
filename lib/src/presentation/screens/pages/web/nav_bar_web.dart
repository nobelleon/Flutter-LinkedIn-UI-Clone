import 'package:flutter/material.dart';
import 'package:linkedin_ui/src/presentation/screens/widgets/style/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widget/nav_bar_web_button.dart';

class NavBarWeb extends StatefulWidget {
  @override
  _NavBarWebState createState() => _NavBarWebState();
}

class _NavBarWebState extends State<NavBarWeb> {
  List<bool> _selectedButton = [true, false, false, false, false, false, false];
  List<bool> _hoverButton = [false, false, false, false, false, false, false];
  bool _isShowUnderLine = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: sizingInformation.localWidgetSize.width / 13),
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          height: 50,
          width: sizingInformation.screenSize.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _rowSearchIconWidget(sizingInformation),
              Container(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedButton[0] = true;
                          _selectedButton[1] = false;
                          _selectedButton[2] = false;
                          _selectedButton[3] = false;
                          _selectedButton[4] = false;
                          _selectedButton[5] = false;
                          _selectedButton[6] = false;
                        });
                      },
                      onHover: (hover) {
                        setState(() {
                          _hoverButton[0] = hover ? true : false;
                        });
                      },
                      child: navBarWebButton(
                          isSelectedButton: _selectedButton[0],
                          name: "Home",
                          iconImage: _hoverButton[0] == true ||
                                  _selectedButton[0] == true
                              ? "assets/icons/home_icon_seleted.png"
                              : "assets/icons/home_icon.png",
                          sizingInformation: sizingInformation),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedButton[0] = false;
                          _selectedButton[1] = true;
                          _selectedButton[2] = false;
                          _selectedButton[3] = false;
                          _selectedButton[4] = false;
                          _selectedButton[5] = false;
                          _selectedButton[6] = false;
                        });
                      },
                      onHover: (hover) {
                        setState(() {
                          _hoverButton[1] = hover ? true : false;
                        });
                      },
                      child: navBarWebButton(
                          isSelectedButton: _selectedButton[1],
                          name: "My Network",
                          iconImage: _hoverButton[1] == true ||
                                  _selectedButton[1] == true
                              ? "assets/icons/network_icon_selected.png"
                              : "assets/icons/my_network_icon.png",
                          sizingInformation: sizingInformation),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedButton[0] = false;
                          _selectedButton[1] = false;
                          _selectedButton[2] = true;
                          _selectedButton[3] = false;
                          _selectedButton[4] = false;
                          _selectedButton[5] = false;
                          _selectedButton[6] = false;
                        });
                      },
                      onHover: (hover) {
                        setState(() {
                          _hoverButton[2] = hover ? true : false;
                        });
                      },
                      child: navBarWebButton(
                          isSelectedButton: _selectedButton[2],
                          name: "Jobs",
                          iconImage: _hoverButton[2] == true ||
                                  _selectedButton[2] == true
                              ? "assets/icons/job_icon_selected.png"
                              : "assets/icons/job_icon.png",
                          sizingInformation: sizingInformation),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedButton[0] = false;
                          _selectedButton[1] = false;
                          _selectedButton[2] = false;
                          _selectedButton[3] = true;
                          _selectedButton[4] = false;
                          _selectedButton[5] = false;
                          _selectedButton[6] = false;
                        });
                      },
                      onHover: (hover) {
                        setState(() {
                          _hoverButton[3] = hover ? true : false;
                        });
                      },
                      child: navBarWebButton(
                          isSelectedButton: _selectedButton[3],
                          name: "Messaging",
                          iconImage: _hoverButton[3] == true ||
                                  _selectedButton[3] == true
                              ? "assets/icons/message_icon_selected.png"
                              : "assets/icons/message_icon.png",
                          sizingInformation: sizingInformation),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedButton[0] = false;
                          _selectedButton[1] = false;
                          _selectedButton[2] = false;
                          _selectedButton[3] = false;
                          _selectedButton[4] = true;
                          _selectedButton[5] = false;
                          _selectedButton[6] = false;
                        });
                      },
                      onHover: (hover) {
                        setState(() {
                          _hoverButton[4] = hover ? true : false;
                        });
                      },
                      child: navBarWebButton(
                          isSelectedButton: _selectedButton[4],
                          name: "Notification",
                          iconImage: _hoverButton[4] == true ||
                                  _selectedButton[4] == true
                              ? "assets/icons/notificationi_icon_selected.png"
                              : "assets/icons/notification_icon.png",
                          sizingInformation: sizingInformation),
                    ),
                    _profileIconWidget(),
                    const SizedBox(
                      width: 5,
                    ),
                    const VerticalDivider(
                      color: Colors.white30,
                      thickness: 0.80,
                    ),
                    _workIconWidget(),
                    _textWidget(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _rowSearchIconWidget(SizingInformation sizingInformation) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset('assets/icons/logo_1.png'),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 35,
            width: sizingInformation.localWidgetSize.width / 5,
            decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileIconWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 3,
          ),
          Container(
            height: 22,
            width: 22,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(35)),
              child: Image.asset('assets/img/profile.jpg'),
            ),
          ),
          Row(
            children: const [
              Text(
                "Me",
                style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _workIconWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 3,
          ),
          Container(
            height: 22,
            width: 22,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              child: Image.asset(
                'assets/icons/dot_icon.png',
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: const [
              Text(
                "work",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _textWidget() {
    return InkWell(
      onTap: () {},
      onHover: (hover) {
        setState(() {
          _isShowUnderLine = hover ? true : false;
        });
      },
      child: Container(
        child: Text(
          "Try Premium Free\n for 1 Month",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor,
              decoration: _isShowUnderLine == false
                  ? TextDecoration.none
                  : TextDecoration.underline),
        ),
      ),
    );
  }
}
