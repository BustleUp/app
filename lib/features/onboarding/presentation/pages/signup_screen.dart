import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/presentation/pages/generate_otp.dart';
import 'package:kiib/features/onboarding/presentation/pages/login_screen.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/input_fields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarUtil(
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: ScreenPadding,
        child: Column(children: [
          // input section
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Create an account',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            'Please provide your phone number for quick and easy verification',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 10,),
         PhoneInputFieldUtil(labelText: 'Input your phone number', onValueInput: (){}),
         const SizedBox(height: 20,),
          // Button confirmations
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Proceed',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const GenerateOtp()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextButtonUtil(
                text: 'I have an Account',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const LogInScreen()));
                },
              ),
            ],
          )
        ]),
      )),
    );
  }
}
