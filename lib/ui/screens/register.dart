import 'package:evently/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../core/app_asset.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static const String routename = 'Register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              Image.asset(AppAsset.LogoImage, height: 200, width: 150),
              SizedBox(height: 25),
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(EvaIcons.person),
                  hintText: 'Name',
                ),
              ),
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
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(EvaIcons.eye_off),
                  prefixIcon: Icon(EvaIcons.lock),
                  hintText: 'Re Password',
                ),
              ),
              SizedBox(height: 20),
              FilledButton(onPressed: (){}, child: Text('Create Account')),
              SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have Account ? ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguageSwitcher(),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
