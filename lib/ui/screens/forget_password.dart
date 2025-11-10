import 'package:evently/core/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static const String routename = 'ForgetPassword';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forget Password',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Image.asset(AppAsset.ForegetPassword),
              SizedBox(height: 15),
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(EvaIcons.email),
                  hintText: 'Email',
                ),
              ),
          SizedBox(height: 20),
          FilledButton(onPressed: (){}, child: Text('Reset Password')),]),
      ),
    );
  }
}
