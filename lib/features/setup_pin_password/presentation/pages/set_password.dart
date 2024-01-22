import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/presentation/pages/generate_otp.dart';
import 'package:kiib/features/onboarding/presentation/pages/login_screen.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/input_fields.dart';

class SetUpPassword extends StatelessWidget {
  const SetUpPassword({super.key});

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
                Text('Set up your password',
                    style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
            const SizedBox(height: 10,),
            Text(
              'Password must contain at least 9 characters, one capital letter, one number and one special character',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10,),
           PasswordInputUtil(labelText: 'Input your password', onValueInput: (){}),
           const SizedBox(height: 10,),
           PasswordInputUtil(labelText: 'Confirm password', onValueInput: (){}),
          
           const SizedBox(height: 20,),
            // Button confirmations
            Column(
              children: [
                ElevatedButtonUtil(
                  text: 'Proceed',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LogInScreen()));
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
