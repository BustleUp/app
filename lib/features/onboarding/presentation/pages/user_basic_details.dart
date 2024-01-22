import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/presentation/pages/generate_otp.dart';
import 'package:kiib/features/setup_pin_password/presentation/pages/set_password.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/input_fields.dart';

class UserRegistrationDetailScreen extends StatelessWidget {
  const UserRegistrationDetailScreen({super.key});

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
          child: Column(children: [
            // input section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text('Enter your basic details',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Text(
              'Please provide your real detail for your official documents',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10,),
              TextInputFieldUtil(labelText: 'Input your full name', text: 'Full Name', onValueInput: () {}),
              TextInputFieldUtil(labelText: 'eg @Nherci', text: 'Choose a pay ID', onValueInput: () {}, sameAsName: true, onPressed: (){},),
              const SizedBox(height: 10,),
              TextInputFieldUtil(labelText: 'Input your email', text: 'Email', onValueInput: () {}),
           const SizedBox(height: 20,),
            // Button confirmations
            Column(
              children: [
                ElevatedButtonUtil(
                  text: 'Proceed',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SetUpPassword()));
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
