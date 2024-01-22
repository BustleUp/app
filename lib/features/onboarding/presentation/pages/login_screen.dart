import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/home/presentation/widgets/home_widget.dart';
import 'package:kiib/features/onboarding/presentation/pages/generate_otp.dart';
import 'package:kiib/features/onboarding/presentation/pages/signup_screen.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/input_fields.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            
            children:
          [
            // input section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Log into your account',
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
            const SizedBox(height: 10,),
            Text(
              'Please provide the phone number and password you used to register your account.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10,),
           PhoneInputFieldUtil(labelText: 'Input your phone number', onValueInput: (){}),
           const SizedBox(height: 10,),
           PasswordInputUtil(labelText: 'Input your password', onValueInput: (){}),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            
             children: [
               SmallTextButtonUtil(text: 'Forgotten Password?', onPressed: (){}),
             ],
           ),
           const SizedBox(height: 20,),
            // Button confirmations
            Column(
              children: [
                ElevatedButtonUtil(
                  text: 'Proceed',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const HomeWidget()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButtonUtil(
                  text: "I don't have an Account",
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SignUpScreen()));
                  },
                ),
              ],
            )
          ]),
        ),
      )),
    );
  }
}
