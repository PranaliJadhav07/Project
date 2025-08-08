//Krish Galicha.Version V1
import 'package:flutter/material.dart';
//import 'package:projectapp/Home/basic_navigation.dart';

// ignore: must_be_immutable
class Basicappbar extends StatelessWidget implements PreferredSizeWidget {
  int reti;
  Basicappbar({super.key, required this.reti});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Basic(ind: reti)),
          // );
        },
        icon: Icon(
          Icons.arrow_circle_left,
          size: 35,
          color: theme.appBarTheme.foregroundColor,
        ),
      ),
      backgroundColor: theme.appBarTheme.backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}