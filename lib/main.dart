// import 'package:easy_localization/easy_localization.dart';
import 'package:evently/core/app_theme.dart';
import 'package:evently/ui/screens/login_screen.dart';
import 'package:evently/ui/start_screens/splash_screen.dart';
import 'package:evently/ui/start_screens/startup_screens/first_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  runApp(
   MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: LoginScreen.routename,
      routes: {SplashScreen.routename: (_) => const SplashScreen(),
        FirstPage.routename: (_) => const FirstPage(),
        LoginScreen.routename:(_)=> const LoginScreen(),
        


      },

    );
  }
}
