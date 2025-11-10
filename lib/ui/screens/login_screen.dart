import 'package:evently/core/app_asset.dart';
import 'package:evently/core/app_color.dart';
import 'package:evently/ui/screens/forget_password.dart';
import 'package:evently/ui/screens/register.dart';
import 'package:evently/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routename = 'LoginPage';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AppAsset.LogoImage, height: 200, width: 150),
                SizedBox(height: 15),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(EvaIcons.email),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    suffixIcon: Icon(EvaIcons.eye_off),
                    prefixIcon: Icon(EvaIcons.lock),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed:() {
                      Navigator.of(context).pushNamed(ForgetPassword.routename);
                    },
                    child: Text(
                      'Forget Password',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                FilledButton(onPressed: () {}, child: const Text('Login')),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have Account ?",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed(Register.routename);
                      },
                      child: Text(
                        'Create Account',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.blue)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'OR',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    Expanded(child: Divider(color: AppColors.blue)),
                  ],
                ),
                SizedBox(height: 15),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.blue),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Brand(Brands.google),
                      SizedBox(width: 8),
                      Text('Login With Google'),
                    ],
                  ),
            
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LanguageSwitcher(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
