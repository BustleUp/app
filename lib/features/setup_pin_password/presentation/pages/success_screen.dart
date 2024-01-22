import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/presentation/pages/user_basic_details.dart';
import 'package:kiib/utils/app_buttons.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: ScreenPadding,
        child: Column(
          children: [
            // Success icon indicator
            const SizedBox(height: 50,),
             Expanded(
              flex: 4,
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(99), color: const Color(0xffE9F7EF)),
                      ),
                    const  Icon(KiibApp.success, color: Color(0xff27AE60), size: 110,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text('Success!', style: TextStyle(color: const Color(0xff333333), fontSize: SuccesText))
                ],
              ),
            )),

            // Confirmation Button
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ElevatedButtonUtil(
                    text: 'Done',
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const UserRegistrationDetailScreen()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
