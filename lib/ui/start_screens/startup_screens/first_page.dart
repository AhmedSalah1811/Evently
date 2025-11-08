import 'package:evently/core/app_asset.dart';
import 'package:evently/core/app_theme.dart';
import 'package:evently/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';

import '../../../widgets/language_switcher.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  static const String routename = 'FirstPage';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAsset.TopFrame),
            Image.asset(AppAsset.Creative),
            SizedBox(height: 15),
            Text(
              'Personalize Your Experience',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 8),
            Text(
              'Choose your preferred theme and language to get started with a comfortable,'
              ' tailored experience that suits your style.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Language",style: Theme.of(context).textTheme.labelMedium),
                const LanguageSwitcher(),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Language",style: Theme.of(context).textTheme.labelMedium),
                const ThemeSwitcher(),
              ],
            ),
           const SizedBox(height: 20,),
            FilledButton(onPressed:() {}, child:const Text("Lets Start"))


          ],
        ),
      ),
    );
  }
}
