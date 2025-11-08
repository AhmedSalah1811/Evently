import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  var themeMode=ThemeMode.light;
  @override

  Widget build(BuildContext context) {

    return AnimatedToggleSwitch<ThemeMode>.rolling(
      current: themeMode,
      values: [ThemeMode.light,ThemeMode.dark],
      style: ToggleStyle(
        backgroundColor: Colors.transparent,
        indicatorColor: Theme.of(context).primaryColor,
      ),
      onChanged: (newTheme) async {
        themeMode = newTheme;
        setState(() {

        });

        // setState(() => value = i);
        // await Future.delayed(Duration(seconds: 3));
      },
      iconBuilder: (value, foreground) {
        if (value == ThemeMode.dark) {
          return Icon(EvaIcons.moon);
        } else {
          return Icon(EvaIcons.sun);
        }
      },
    );
  }
}
