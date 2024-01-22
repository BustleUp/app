import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/presentation/pages/login_screen.dart';
import 'package:kiib/features/onboarding/presentation/pages/user_basic_details.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/input_fields.dart';

class GenerateOtp extends StatelessWidget {
  const GenerateOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarUtil(
        onPressed: () {
          Navigator.pop(context);
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
              Text('Input your OTP',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            'Please input the OTP code that was sent to +234**********21',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 25,),
          EnterPinUtil(values: (){}),
          const SizedBox(height: 15,),
          // Button confirmations
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Proceed',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const UserRegistrationDetailScreen()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("Didn't recieve OTP?", style: Theme.of(context).textTheme.bodyMedium,),
                 TextButtonUtil(
                text: 'Resend',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LogInScreen()));
                },
              ),
                ],
              )
              
            ],
          )
        ]),
      )),
    );
  }
}