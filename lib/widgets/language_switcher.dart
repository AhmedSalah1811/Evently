import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  var local = "ar";
  @override

  Widget build(BuildContext context) {

    return AnimatedToggleSwitch<String>.rolling(
      current: local,
      values: ['ar', 'en'],
      style: ToggleStyle(
        backgroundColor: Colors.transparent,
        indicatorColor: Theme.of(context).primaryColor,
      ),
      onChanged: (newlocal) async {
        local = newlocal;
        setState(() {

        });

        // setState(() => value = i);
        // await Future.delayed(Duration(seconds: 3));
      },
      iconBuilder: (value, foreground) {
        if (value == 'ar') {
          return Flag(Flags.egypt);
        } else {
          return Flag(Flags.united_states_of_america);
        }
      },
    );
  }
}
