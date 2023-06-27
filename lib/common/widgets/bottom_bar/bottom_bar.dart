import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:elite_commerce/utils/router/router_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KBottomBar extends StatefulWidget {
  final int pageIndex;
  const KBottomBar({
    required this.pageIndex,
    super.key,
  });

  @override
  State<KBottomBar> createState() => _KBottomBarState();
}

class _KBottomBarState extends State<KBottomBar> {
  onRoute(int index) {
    if (index == 0) {
      context.goNamed(MyRouterConstants.homeRoute);
    } else if (index == 1) {
      context.goNamed(MyRouterConstants.chatRoute);
    } else if (index == 2) {
      context.goNamed(MyRouterConstants.profileRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.pageIndex,
      onTap: (value) {
        onRoute(value);
      },
      useLegacyColorScheme: false,
      selectedIconTheme: IconThemeData(color: kMainColor),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      iconSize: 25.0,
      selectedLabelStyle: kGreenStyle,
      unselectedLabelStyle: kBlackStyle,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          activeIcon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble_2),
          activeIcon: Icon(CupertinoIcons.chat_bubble_2),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_fill),
          activeIcon: Icon(CupertinoIcons.person_fill),
          label: 'Profile',
        ),
      ],
    );
  }
}
