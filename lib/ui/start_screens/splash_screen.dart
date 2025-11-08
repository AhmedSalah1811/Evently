import 'package:evently/core/app_asset.dart';
import 'package:evently/ui/start_screens/startup_screens/first_page.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routename = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, FirstPage.routename  );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEAF6F6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(child: Image.asset(AppAsset.LogoImage)),
            const SizedBox(height: 16),
      
            const Spacer(),
            Column(
              children:  [
                Image.asset(AppAsset.Route),
                SizedBox(height: 4),
                Text('Supervised by Mohamed Nabil', style: TextStyle(color: Colors.blue, fontSize: 12)),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
