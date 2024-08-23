  import 'package:drawermenu/HomePage.dart';
import 'package:drawermenu/aboutpage.dart';
import 'package:drawermenu/settingpage.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';

  class Drawermenu extends StatefulWidget {
    const Drawermenu({super.key});
  
    @override
    State<Drawermenu> createState() => _DrawermenuState();
  }
  
  class _DrawermenuState extends State<Drawermenu> {
    List<ScreenHiddenDrawer> _pages = [];

    final myTextStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.white,
    );

    @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'HomePage',
              baseStyle: myTextStyle,
              selectedStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple
          ),
          Homepage()
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'SettingPage',
              baseStyle: myTextStyle,
              selectedStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple,

          ),
          Settingpage()
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'AboutPage',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple,

          ),
          Aboutpage()
      ),
    ];
  }

    @override
    Widget build(BuildContext context) {
      return  HiddenDrawerMenu(
          backgroundColorMenu: Colors.deepPurple.shade100,
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 55,

        // contentCornerRadius: 40,
        // typeOpen: TypeOpen.FROM_RIGHT,
        // disableAppBarDefault: true, // by this the appbar title are disable and enable
        // enableShadowItensMenu: true,
      );
    }
  }
  